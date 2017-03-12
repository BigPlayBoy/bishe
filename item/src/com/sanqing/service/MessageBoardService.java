package com.sanqing.service;

import com.sanqing.po.MessageBoard;
import com.sanqing.util.Page;
import com.sanqing.util.PageResult;

public interface MessageBoardService {
boolean saveMessage(MessageBoard messageBoard);
    PageResult queryMessageByPage(Page page);
}
