package com.rcore.admincore.domain.file.web;

import com.rcore.adapter.domain.file.FileAdapter;
import com.rcore.adapter.domain.file.dto.FileDTO;
import com.rcore.adapter.domain.token.TokenAdapter;
import com.rcore.adapter.domain.user.dto.UserDTO;
import com.rcore.admincore.domain.file.application.FileWebMapper;
import com.rcore.admincore.domain.file.web.api.FileWeb;
import com.rcore.commons.utils.DomainUtils;
import com.rcore.domain.base.port.SearchResult;
import com.rcore.domain.token.exception.AuthenticationException;
import com.rcore.domain.token.exception.AuthorizationException;
import com.rcore.restapi.exceptions.NotFoundApiException;
import com.rcore.restapi.web.api.request.SearchApiRequest;
import com.rcore.restapi.web.api.response.OkApiResponse;
import com.rcore.restapi.web.api.response.SearchApiResponse;
import com.rcore.restapi.web.api.response.SuccessApiResponse;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Api(tags = "File API", description = "API Файлов")
@RequiredArgsConstructor
@RestController("fileAdminEndpoints")
public class FileEndpoints {

    private final TokenAdapter tokenAdapter;
    private final FileAdapter fileAdapter;
    private final FileWebMapper fileWebMapper;

    @ApiOperation("Получение списка файлов")
    @GetMapping(value = Routes.ROOT, produces = MediaType.APPLICATION_JSON_VALUE)
    public SuccessApiResponse<SearchApiResponse<FileWeb>> all(@ModelAttribute SearchApiRequest request) throws AuthenticationException, AuthorizationException {
        SearchResult<FileDTO> result = fileAdapter.getAdmin()
                .find(tokenAdapter.currentUser(), request.getLimit(), request.getOffset());

        return SuccessApiResponse.of(
                SearchApiResponse.withItemsAndCount(
                        fileWebMapper.mapAll(result.getItems()),
                        result.getCount()
                ));
    }

    @ApiOperation("Получение информации о файле")
    @GetMapping(value = Routes.BY_ID, produces = MediaType.APPLICATION_JSON_VALUE)
    public SuccessApiResponse<FileWeb> get(@PathVariable String id) throws AuthenticationException, AuthorizationException, NotFoundApiException {
        return SuccessApiResponse.of(fileAdapter.getAdmin()
                .findById(tokenAdapter.currentUser(), id)
                .map(fileWebMapper::map)
                .orElseThrow(() -> new NotFoundApiException("Неверный идентификатор файла", DomainUtils.getDomain(FileWeb.class), "NOT_FOUND"))
        );
    }

    @ApiOperation("Удаление файла")
    @DeleteMapping(value = Routes.BY_ID, produces = MediaType.APPLICATION_JSON_VALUE)
    public OkApiResponse delete(@PathVariable String id) throws AuthenticationException, AuthorizationException, NotFoundApiException {
        UserDTO actor = tokenAdapter.currentUser();
        FileDTO file = fileAdapter.getAdmin()
                .findById(actor, id)
                .orElseThrow(() -> new NotFoundApiException("Неверный идентификатор файла", DomainUtils.getDomain(FileWeb.class), "NOT_FOUND"));

        fileAdapter.getAdmin().delete(actor, file);
        return OkApiResponse.of();
    }

    @ApiOperation("Загрузка файла")
    @PostMapping(value = Routes.ROOT, produces = MediaType.APPLICATION_JSON_VALUE)
    public SuccessApiResponse<String> upload(@PathVariable MultipartFile file) throws AuthenticationException, IOException, AuthorizationException {
        FileDTO fileDTO = fileAdapter.getAdmin()
                .create(tokenAdapter.currentUser(), file.getInputStream(), file.getOriginalFilename(), file.getContentType(), false);

        return SuccessApiResponse.of(fileDTO.getId());
    }
}