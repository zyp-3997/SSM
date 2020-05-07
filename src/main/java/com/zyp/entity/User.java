package com.zyp.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author shkstart
 * @create 2020-05-05 19:39
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int userid;
    private String username;
    private String password;

}
