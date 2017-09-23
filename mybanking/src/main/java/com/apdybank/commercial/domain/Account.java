package com.apdybank.commercial.domain;

public class Account {

	private final String id;
    private final String content;

    public Account() {
        this.id = "1";
        this.content = "test account";
    }

    public Account(String id, String content) {
        this.id = id;
        this.content = content;
    }

    public String getId() {
        return id;
    }

    public String getContent() {
        return content;
    }
}
