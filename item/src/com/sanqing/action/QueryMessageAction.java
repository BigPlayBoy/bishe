package com.sanqing.action;

import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.MessageBoard;
import com.sanqing.service.MessageBoardService;
import com.sanqing.service.MessageBoardServiceImpl;
import com.sanqing.util.Page;
import com.sanqing.util.PageResult;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by jarvis on 2017/2/21.
 *
 */
public class QueryMessageAction extends ActionSupport {
    private int currentPage;		//当前页
    private int isFirst;//是否第一次打开页面
private MessageBoardService messageBoardService=new MessageBoardServiceImpl();
    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getIsFirst() {
        return isFirst;
    }

    public void setIsFirst(int isFirst) {
        this.isFirst = isFirst;
    }

    public String execute() throws Exception {
        System.out.println("获取留言信息");
        Page page = new Page();
        page.setEveryPage(3);//每页显示10条记录
        page.setCurrentPage(currentPage);//设置当前页
        PageResult pageResult = messageBoardService.queryMessageByPage(page);
        List<MessageBoard> messageBoards = pageResult.getList();//获得试题记录
        page = pageResult.getPage();//获得分页信息

        HttpServletRequest request = ServletActionContext.getRequest();
        System.out.println("输出获取到的留言内容\t"+messageBoards.get(0).getContent());
        request.setAttribute("messageBoards", messageBoards);
        request.setAttribute("page", page);
        request.setAttribute("isFirst",isFirst);//记录是否是第一次打开
        return "isSuccess";
    }
}
