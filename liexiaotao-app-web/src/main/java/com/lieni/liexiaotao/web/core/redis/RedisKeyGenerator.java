package com.lieni.liexiaotao.web.core.redis;

public class RedisKeyGenerator extends WebRedisKeyGenerator {

    private static final String RESUME_DOWNLOAD_COUNT = "resume.download.count";

    /**
     * 简历下载数map的key
     *
     * @return String
     */
    public static String getResumeDownloadCountMapKey() {
        return genKey(RESUME_DOWNLOAD_COUNT);
    }

    /**
     * 简历下载数的key
     *
     * @param resumeId 简历id
     * @return String
     */
    public static String genResumeDownloadCountKey(String resumeId) {
        return genKey(RESUME_DOWNLOAD_COUNT, resumeId);
    }

}
