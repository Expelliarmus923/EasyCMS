<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@include file="../../util/checkParentFrame.jsp" %>
<HTML>
<HEAD>
    <LINK rel=stylesheet type=text/css href="<%=basePath %>img/style.css">
    <LINK rel=stylesheet type=text/css href="<%=basePath %>img/style3.css">
</HEAD>
<BODY>

<DIV class="column">
    <div class="columntitle">
        信息提示
    </div>
    <div style="text-align:left">
        <form action="channel_makehtml.do">
            <input type="hidden" name="pageFuncId" id="pageFuncId" value="${pageFuncId }"/>
            <input type="hidden" name="channel.id" value="${channel.id }"/>
            操作成功，请选择需要静态化的内容。<br/>
            <input type="checkbox" name="htmlChannel" value="1" checked/>本栏目页面静态化<br/>
            <input type="checkbox" name="htmlChannelPar" value="1" checked/>本栏目的所有父栏目页面静态化<br/>
            <input type="checkbox" name="htmlIndex" value="1" checked/>站点首页静态化<br/>

            <input type="submit" value="立即静态化" class="button"/>&nbsp;
            <input type="button" value="不，我要继续编辑此栏目"
                   onclick="location.href='channel_edit.do?channel.id=${channel.id }&pageFuncId=${pageFuncId }'"
                   class="button"/>

        </form>
    </div>

</DIV>

</BODY>
</HTML>

