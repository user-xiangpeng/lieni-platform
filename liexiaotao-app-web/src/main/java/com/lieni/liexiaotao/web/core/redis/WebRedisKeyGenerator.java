package com.lieni.liexiaotao.web.core.redis;

import com.lieni.core.nosql.KeyGenerator;

public class WebRedisKeyGenerator extends KeyGenerator {

    private static final String PROJECT_NAME = "liexiaotao-app-web";

    protected static String genKey(long primaryKey, String... funcs) {
        return genKey(String.valueOf(primaryKey), funcs);
    }

    protected static String genKey(String primaryKey, String... funcs) {
        return genKeyInProject(PROJECT_NAME, primaryKey, funcs);
    }
}
