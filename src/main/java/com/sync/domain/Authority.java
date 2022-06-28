package com.sync.domain;

import lombok.*;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Authority {

    private String rolename;
    private String username;

}
