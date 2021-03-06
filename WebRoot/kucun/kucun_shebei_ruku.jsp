<!--
   TFTECH corporation (c)2012 all rights reserved.
   Description:

   Update:
   Date         Name               Reason
   ============ ================== ==========
   2012-11-23     Zhu,Xiao-Lei     Create
   
  -->
<%@ page contentType="text/html; charset=GBK"%>
<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tlds/aceeci.tld" prefix="a"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>快速开发框架演示项目</title>
		<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js" ></script>
		<link href="css/common.css" type="text/css" rel="stylesheet" />
		<link href="css/popupBox.css" type="text/css" rel="stylesheet" />
		<script src="js/common.js" language="javascript"></script>
		<script src="js/validate.js" language="javascript"></script>
		<script src="js/jquery.js" language="javascript"></script>
		<script src="js/popupBox.js" language="javascript"></script>
		<script src="js/business.js" language="javascript"></script>
		<script src="kucun/kucun.js" language="javascript"></script>
		<jsp:include page="/common/commonMessage.jsp" />
		<style>
			form {padding:0;margin:0;border:0}
		</style> 
	</head>
	<body onload="init()">
	<div style="height:440px;">
		<html:form action="shebeirukuList.do">
		<bean:define id="statusList" name="kucunForm" property="statusList"></bean:define>
		<bean:define id="xiaoquList" name="kucunForm" property="xiaoquList"></bean:define>
			<div id="content_all">
				<!-- 标题 -->
				<div class="conten_top" name="top">
					设备导入分配
				</div>
				<!-- 查询条件 -->
				<div id="conten_query2">
					<table id="quert_table" cellpadding="1" cellspacing="1" border="0">
						<tr>
							<td >
								设备状态：	
							</td>
							<td>
								<html:select style="width:80px" name="kucunForm" property="status"
									styleClass="commonTextFieldHover" 
									onfocus="this.className='commonTextFieldMove'" 
									onblur="this.className='commonTextFieldHover'">
									<!-- <html:option value="">-请选择-</html:option> -->
									<html:options collection="statusList" property="key" labelProperty="value" />
								</html:select>	
							</td>
							<td>
								MAC：
							</td>
							<td>
								<html:text name="kucunForm" property="qmac" size="12"/>
							</td>
							<td >
								MCID：
							</td>
							<td>
								<html:text name="kucunForm" property="qmcid" size="12"/>
							</td>
							
						</tr>
						
						<tr>
							<td>
								时间类型：
							</td>
							<td>
								<html:select name="kucunForm" property="shijianleixing" 
									styleClass="commonTextFieldHover"  
									onfocus="this.className='commonTextFieldMove'" 
									onblur="this.className='commonTextFieldHover'">
									<html:option value="">-请选择-</html:option>
									<html:option value="1">入库日期</html:option>
								</html:select>
							</td>
							<td>
								开始时间：
							</td>
							<td>
								<html:text name="kucunForm" property="kaishi" styleId="kaishi" size="10" onclick="WdatePicker({el:'kaishi'})" />
								<img onclick="WdatePicker({el:'kaishi'})" src="${pageContext.request.contextPath}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle"/> 
							</td>
							<td>
								结束时间：
							</td>
							<td>
								<html:text name="kucunForm" property="jieshu" styleId="jieshu" size="10" onclick="WdatePicker({el:'jieshu'})" />
								<img onclick="WdatePicker({el:'jieshu'})" src="${pageContext.request.contextPath}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle"/> 
							</td>
							<td>
								综合查询：
							</td>
							<td>
								<html:select name="kucunForm" property="sen"
									styleClass="commonTextFieldHover" 
									onfocus="this.className='commonTextFieldMove'" 
									onblur="this.className='commonTextFieldHover'">
									<html:option value="">-请选择-</html:option>
									<html:option value="1">箱号</html:option>
									<html:option value="2">入库人</html:option>
									<html:option value="3">设备类型</html:option>
									<html:option value="4">设备型号</html:option>
									<!-- <html:option value="5">领取人</html:option> -->
									<html:option value="6">注册位置</html:option>
									<html:option value="7">数据IP</html:option>
									<html:option value="8">备注</html:option>
								</html:select>
							</td>
							<td>
								等于
							</td>
							<td>
								<html:text name="kucunForm" property="senValue" size="12" />
							</td>
							<td>
								<!--<input type="button" value="查询" class="commonButton" onclick="commonSubmit('shebeirukuList.do?act=query')" /> -->
								 <input type="button" value="查询" class="commonButton" onclick="if(check()){commonSubmit('shebeirukuList.do?act=query');}" />
							</td>
							<td >
								<!-- <input type="button" value="搜寻结果内查询" class="commonButton4" onclick="" /> -->
							</td>
						</tr>
					</table>
					<div id="query2_div" style="display:none;">
					</div>
				</div>
				<!-- 查询结果 start -->
				<div name="result" class="conten_result2">
					<!-- 分页头 -->
					<div name="page_up" class="page_up">
						 <jsp:include page="/common/paginationHeader.jsp" /> 
					</div>
					<!-- 结果一览 start-->
					<div name="result_table" class="result_table">
						<table border="0" cellspacing="0" cellpadding="1" width="140%">
							<tr bgcolor="#EEF5FA" align="center">
								<td class="tableTitleLine">
									&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									编辑&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									箱号&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									设备状态&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									入库日期&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									入库人&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									设备类型&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									设备型号&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									小区入库日期&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									入库小区&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									领取人&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									安装地点&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									安装时间&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									注册位置&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									MAC&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									MCID&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									数据IP&nbsp;
								</td>
								<td class="tableTitleLine" nowrap="nowrap">
									入库产品备注&nbsp;
								</td>
				
							</tr>
							<logic:iterate id="line"
								           name="com.takucin.aceeci.frame.pagination"
								           property="result"
								           type="com.takucin.aceeci.frame.sql.DataRow">
								<tr align="center">
								    <td class="tableContentLine" nowrap="nowrap">
								      <input name="UUIDS" type="checkbox" value="${line.id}" />
								    </td>
									<td class="tableContentLine" nowrap="nowrap">
										<input name="UUID" type="radio" value="${line.id}" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqboxnum" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqsta_name" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqintime" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqinperson" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqtype" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqversion" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="firstenterdate" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="community_id" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="get_person" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="install_site" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="install_time" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="EqRegister" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqmac" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqmcid" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqip" />
									</td>
									<td class="tableContentLine" nowrap="nowrap">
										<bean:write name="line" field="eqremark" />
									</td>
									
								</tr>
							</logic:iterate>
						
						</table>
					</div>
					<!-- 结果一览 end-->
					<div name="page_down" class="page_downuser">
						<div align="right">
							<jsp:include page="/common/paginationFooter.jsp" /> 
						</div>
					</div>
				</div>
				<!-- 查询结果 end -->
				<!-- button -->
				<div id="buttonC" name="button" class="content_button" >
					<html:button property="btnSave" value="全选" styleClass="commonButton" onclick="isCheck()"/>
					<html:button property="btnSave" value="编辑" styleClass="commonButton" onclick="commonCheckSubmit('shebeirukuList.do?act=shebeiEdit&zhuangtai=2','UUID','请单选择要编辑的设备！')" />
			    	<html:button property="btnSave" value="设备出库" styleClass="commonButton2" onclick="commonCheckSubmit('shebeichuku.do?act=shebeichuku&zhuangtai=2','UUIDS','请多选择要出库的设备！')" />
			    	<html:button property="btnSave" value="删除" styleClass="commonButton" onclick="deleteData();" />
			    	<!-- <html:button property="btnSave" value="设备异常登记" styleClass="commonButton4" onclick="commonCheckSubmit('shebeichuku.do?act=shebeiToyichangku&zhuangtai=2','UUIDS','请选择要登记异常的设备！')"/> -->
			    </div>
			</div>
			
			
		</html:form>
	</div>
	<html:form action="shebeidataUpload.do?act=upload" method="post" enctype="multipart/form-data" >
			<table id="quert_table" cellpadding="1" cellspacing="1" border="0">
				<tr>
					<td></td>
					<td><input name="formFile" type="file" size="60"
						class="commonTextFieldHover" 
						onfocus="this.className='commonTextFieldMove'" 
						onblur="this.className='commonTextFieldHover'" />
					
					<html:submit property="telUpload" value="设备批量导入" styleClass="commonButton4"></html:submit>
					
					<a href="./kucun/kc_biaotou.xls">模板下载</a>
					</td>
					</tr>
				</table>
		</html:form>
	
	</body>
	<script type="text/javascript"  language="javascript">
	var allCheck = false;
		
		function isCheck(){
			if(allCheck == false){
				checkAll();
				allCheck = true;
			}else{
				uncheckAll();
				allCheck = false;
			} 
		}
		
		function checkAll() { 
		var code_Values = document.getElementsByTagName("input"); 
			for(var i = 0;i < code_Values.length;i++) {
				if(code_Values[i].type == "checkbox") {
					code_Values[i].checked = true; 
				}
			}
			//alert(arrayCheckId);
		} 
		function uncheckAll() {
			var code_Values = document.getElementsByTagName("input"); 
			for(var i = 0;i < code_Values.length;i++) {
				if(code_Values[i].type == "checkbox") {
					code_Values[i].checked = false; 
				} 
			}
		}
		
	</script>
</html>
