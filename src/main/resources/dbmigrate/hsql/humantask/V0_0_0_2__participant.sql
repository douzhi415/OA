

-------------------------------------------------------------------------------
--  participant
-------------------------------------------------------------------------------
CREATE TABLE HT_PARTICIPANT(
	ID BIGINT NOT NULL,
	CATEGORY VARCHAR(200),
	TYPE VARCHAR(200),
	REF VARCHAR(200),
	HUMANTASK_ID BIGINT,
        CONSTRAINT PK_HT_PARTICIPANT PRIMARY KEY(ID),
	CONSTRAINT FK_HT_PARTICIPANT_HUMANTASK FOREIGN KEY(HUMANTASK_ID) REFERENCES HT_HUMANTASK(ID)
);

COMMENT ON TABLE HT_PARTICIPANT IS 'keyvalue存储';
COMMENT ON COLUMN HT_PARTICIPANT.ID IS '主键';
COMMENT ON COLUMN HT_PARTICIPANT.CATEGORY IS '分类';
COMMENT ON COLUMN HT_PARTICIPANT.TYPE IS '类型';
COMMENT ON COLUMN HT_PARTICIPANT.REF IS '引用';
COMMENT ON COLUMN HT_PARTICIPANT.HUMANTASK_ID IS '外键，humantaskId';

