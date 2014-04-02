package com.ub.core.user.models;


import com.ub.core.base.role.Role;
import org.apache.commons.codec.digest.DigestUtils;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Id;
import java.util.HashSet;
import java.util.Set;

@Document
public class UserDoc {
    @Id
    protected ObjectId id;

    protected Set<Role> roles = new HashSet<Role>();

    protected String email;
    protected String password;
    protected UserStatusEnum userStatus = UserStatusEnum.ACTIVE;

    protected String firstName;
    protected String lastName;


    public static String generateHexPassword(String email, String password) {
        return DigestUtils.md5Hex(email + ";" + password + "42");
    }

    public void setPasswordAsHex(String notHexPassword) {
        this.password = generateHexPassword(email, notHexPassword);
    }


    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserStatusEnum getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(UserStatusEnum userStatus) {
        this.userStatus = userStatus;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
