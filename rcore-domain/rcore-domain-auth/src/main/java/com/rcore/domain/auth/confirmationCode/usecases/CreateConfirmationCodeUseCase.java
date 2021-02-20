package com.rcore.domain.auth.confirmationCode.usecases;

import com.rcore.domain.auth.confirmationCode.entity.ConfirmationCodeEntity;
import com.rcore.domain.auth.confirmationCode.exceptions.ExistNotConfirmedCodeException;
import com.rcore.domain.auth.confirmationCode.port.ConfirmationCodeGenerator;
import com.rcore.domain.auth.confirmationCode.port.ConfirmationCodeIdGenerator;
import com.rcore.domain.auth.confirmationCode.port.ConfirmationCodeRepository;
import com.rcore.domain.commons.usecase.UseCase;
import lombok.RequiredArgsConstructor;
import lombok.Value;

@RequiredArgsConstructor
public class CreateConfirmationCodeUseCase extends UseCase<CreateConfirmationCodeUseCase.InputValues, CreateConfirmationCodeUseCase.OutputValues> {

    private final ConfirmationCodeRepository confirmationCodeRepository;
    private final ConfirmationCodeIdGenerator confirmationCodeIdGenerator;
    private final ConfirmationCodeGenerator confirmationCodeGenerator;

    @Override
    public OutputValues execute(InputValues inputValues) {
        //Если уже есть неподтвержденный код - возвращаем соответствующую ошибку
        if (confirmationCodeRepository.existNotConfirmedCode(inputValues.getAuthorizationId()))
            throw new ExistNotConfirmedCodeException(inputValues.getAuthorizationId());

        ConfirmationCodeEntity confirmationCodeEntity = new ConfirmationCodeEntity();
        confirmationCodeEntity.setId(confirmationCodeIdGenerator.generate());
        confirmationCodeEntity.setAuthorizationId(inputValues.getAuthorizationId());
        confirmationCodeEntity.setSendingStatus(ConfirmationCodeEntity.SendingStatus.WAITING);
        //Генерируем код
        confirmationCodeEntity.setCode(confirmationCodeGenerator.generate());
        confirmationCodeEntity.setRecipient(inputValues.getRecipient());

        //Устанавливаем дату истечения
        confirmationCodeEntity.installExpiredAt(inputValues.getTtl());
        return new OutputValues(confirmationCodeRepository.save(confirmationCodeEntity));
    }

    @Value
    public static class InputValues implements UseCase.InputValues {
        private final String authorizationId;
        private final ConfirmationCodeEntity.Recipient recipient;
        private final Long ttl;
    }

    @Value
    public static class OutputValues implements UseCase.OutputValues {
        private final ConfirmationCodeEntity confirmationCodeEntity;
    }

}
