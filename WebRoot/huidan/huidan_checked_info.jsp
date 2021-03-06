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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
<head>
<title>快速开发框架演示项目</title>
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<link href="css/popupBox.css" type="text/css" rel="stylesheet" />
<script src="js/validate.js" language="javascript"></script>
<script src="js/common.js" language="javascript"></script>
<script src="js/jquery.js" language="javascript"></script>
<script src="js/popupBox.js" language="javascript"></script>
<script src="yonghushuju/yonghuData.js" language="javascript"></script>
<script src="js/business.js" language="javascript"></script>
<jsp:include page="/common/commonMessage.jsp" />
</head>
<body onload="init()">
	<html:form action="huidancheckedList.do">
		<bean:define id="xiaoquList" name="HuidanForm" property="xiaoquList"></bean:define>
		<bean:define id="statusList" name="HuidanForm" property="statusList"></bean:define>
		<div id="content_all">
			<!-- 标题 -->
			<div class="conten_top" name="top">用户数据详情</div>
			<div class="conten_query" name="query"></div>
			<div name="result" class="conten_result">
				<div name="result_table" class="result_table">
					<table border="0" cellspacing="0" cellpadding="2" width="940px">
						<tr height="35px">
							<td class="editTableTitle" width="30px">用户信息：</td>
							<td class="editTableContent">
								<table>
									<tr>
										<td>
											小区： <html:text name="HuidanEntityForm"
												property="xiaoqu" size="12" maxlength="20" disabled="true"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
												
											用户地址： <html:text name="HuidanEntityForm"
												property="dizhi" size="12" maxlength="20" disabled="true"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>
											用户姓名： <html:text name="HuidanEntityForm"
												property="xingming" size="12" maxlength="20"
												styleClass="commonTextFieldHover" disabled="true"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											联系电话： <html:text name="HuidanEntityForm"
												property="lianxidianhua" size="12" maxlength="20"
												styleClass="commonTextFieldHover" disabled="true"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>身份证号： <html:text name="HuidanEntityForm"
												property="shenfenzheng" size="30" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'" disabled="true"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table border="0" cellspacing="0" cellpadding="2" width="940px">
						<tr height="35px">
							<td class="editTableTitle" width="30px">服务信息：</td>
							<td class="editTableContent">
								<table>
									<tr>
										<td>用户状态： <html:text name="HuidanEntityForm"
												property="yonghuzhuangtai" size="12" maxlength="20" disabled="true"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										匹配状态： <html:select name="HuidanEntityForm" property="pipeizhuangtai" 
													styleClass="commonTextFieldHover"  disabled="true"
													onfocus="this.className='commonTextFieldMove'" 
													onblur="this.className='commonTextFieldHover'">
													<html:option value=""></html:option>
													<html:option value="已匹配">已匹配</html:option>
													<html:option value="未匹配">未匹配</html:option>
												</html:select>	
												<a:need />
												
												收款时间： <html:text name="HuidanEntityForm" disabled="true" property="shoukuanshijian" styleId="shoukuanshijian" size="10" onclick="WdatePicker({el:'shoukuanshijian'})" />
								<img onclick="WdatePicker({el:'shoukuanshijian'})" src="${pageContext.request.contextPath}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">  <a:need />
										</img><br/>		
											收据号：<html:text name="HuidanEntityForm" disabled="true"
												property="shoujuhao" size="20" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>分光线号： <html:text name="HuidanEntityForm" disabled="true"
												property="fenguanxianhao" size="12" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											接续位置： <html:text name="HuidanEntityForm" disabled="true"
												property="jiexuweizhi" size="12" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>开机时间： <html:text name="HuidanEntityForm" disabled="true" property="kaijishijian" styleId="paigongriqis" size="10" onclick="WdatePicker({el:'paigongriqis'})" />
								<img onclick="WdatePicker({el:'paigongriqis'})" src="${pageContext.request.contextPath}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">  <a:need />
											停机时间： <html:text name="HuidanEntityForm" disabled="true" property="tingjishijian" styleId="paigongriqis" size="10" onclick="WdatePicker({el:'paigongriqis'})" />
								<img onclick="WdatePicker({el:'paigongriqis'})" src="${pageContext.request.contextPath}/js/My97DatePicker/skin/datePicker.gif" width="16" height="22" align="absmiddle">  <a:need />
										</td>
									</tr>
									<tr>
										<td>网络： <html:text name="HuidanEntityForm" disabled="true"
												property="wangluo" size="12" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											电视： <html:text name="HuidanEntityForm" disabled="true"
												property="dianshi" size="12" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											电话： <html:text name="HuidanEntityForm" disabled="true"
												property="dianhua" size="12" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>业务： <html:text name="HuidanEntityForm" disabled="true"
												property="yewu" size="12" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											分光： <html:text name="HuidanEntityForm" disabled="true"
												property="fenguang" size="12" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
								</table>
								
							</td>
						</tr>
					</table>
					<table border="0" cellspacing="0" cellpadding="2" width="940px">
						<tr height="35px">
							<td class="editTableTitle" width="30px">设备信息：</td>
							<td class="editTableContent">
								<table>
									<tr>
										<td>Onu mac： <html:text name="HuidanEntityForm" disabled="true"
												property="onuMAC" size="16" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											STB MCID：  <html:text name="HuidanEntityForm"
												property="STB_MCID" size="12" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /><a:need />
										</td>
									</tr>
									<tr>
										<td>电视IP： <html:text name="HuidanEntityForm" disabled="true"
												property="dianshiIP" size="14" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											网络IP： <html:text name="HuidanEntityForm" disabled="true"
												property="wangluoIP" size="14" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											电话IP： <html:text name="HuidanEntityForm" disabled="true"
												property="dianhuaIP" size="14" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
									</tr>
									<tr>
										<td>电话vlan： <html:text name="HuidanEntityForm" disabled="true"
												property="dianhuaVLAN" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
											网络vlan： <html:text name="HuidanEntityForm" disabled="true"
												property="wangluoVLAN" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> <a:need />
										</td>
										
									</tr>
								</table>
								</td>
						</tr>
					</table>
								<table border="0" cellspacing="0" cellpadding="2" width="940px">
						<tr height="35px">
							<td class="editTableTitle" width="30px">上门信息：</td>
							<td class="editTableContent">
								<table>
									<tr>
										<td>上门时间：<html:text name="HuidanEntityForm" disabled="true"
												property="shangmenshijian" size="12" maxlength="20"
												styleClass="commonTextFieldHover" 
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" />
												
											单证：<html:text name="HuidanEntityForm" disabled="true"
												property="danzheng" size="20" maxlength="20"
												styleClass="commonTextFieldHover" 
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /><br/>
											所选电话号码：<html:text name="HuidanEntityForm" disabled="true"
												property="sxdhhm" size="50" maxlength="60"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" />
										</td>
									</tr>
									<tr>
										<td>Onu押金： <html:text name="HuidanEntityForm" disabled="true"
												property="onuyj" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											机顶盒押金： <html:text name="HuidanEntityForm" disabled="true"
												property="jidingheyj" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
									</tr>
									<tr>
										<td>收视费： <html:text name="HuidanEntityForm" disabled="true"
												property="shoushifei" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											宽带费： <html:text name="HuidanEntityForm" disabled="true"
												property="kuandaifei" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											初装费： <html:text name="HuidanEntityForm" disabled="true"
												property="chuzhuangfei" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
										
									</tr>
									<tr>
										<td>设备销售费： <html:text name="HuidanEntityForm" disabled="true"
												property="shebeixiaoshoufei" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											材料费： <html:text name="HuidanEntityForm" disabled="true"
												property="cailiaofei" size="15" maxlength="20"
												styleClass="commonTextFieldHover" 
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
									</tr>
									<tr>
										<td>运营商： <html:text name="HuidanEntityForm" disabled="true"
												property="yunyingshang" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											不足月够费： <html:text name="HuidanEntityForm" disabled="true"
												property="bzygf" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											年费： <html:text name="HuidanEntityForm" disabled="true"
												property="nianfei" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
										
									</tr>
									<tr>
										<td>备注： <!--  <html:text name="HuidanEntityForm"
												property="beizhu" size="15" maxlength="100"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> -->
											<html:textarea name="HuidanEntityForm" property="beizhu"   disabled="true"
										rows="5" cols="70"  onkeyup="if(this.value.length>250)this.value=this.value.substr(0,250)">
									</html:textarea>
									</td>
									</tr>
									<tr>
										<td>
											总收费： <html:text name="HuidanEntityForm" disabled="true"
												property="zongshoufei" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
										
									</tr>
									<tr>
										<td>收据本号/收据号： <html:text name="HuidanEntityForm" disabled="true"
												property="shoujubenhao" size="30" maxlength="30"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> </td></tr>
									<tr>
										<td>开票信息：
										<html:textarea name="HuidanEntityForm" property="kaipiaoxinxi"   disabled="true"
										rows="5" cols="70"  onkeyup="if(this.value.length>200)this.value=this.value.substr(0,200)">
									</html:textarea>
									</td></tr>
									<tr>
										<td>
											其他设备使用情况： <html:text name="HuidanEntityForm" disabled="true"
												property="qtsbsyqk" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
									</tr>
									<tr>
										<td>其他耗材： <html:text name="HuidanEntityForm" disabled="true"
												property="qitahaocai" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											接线子： <html:text name="HuidanEntityForm" disabled="true"
												property="jiexianzi" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											RJ11： <html:text name="HuidanEntityForm" disabled="true"
												property="rj11" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											RJ45： <html:text name="HuidanEntityForm" disabled="true"
												property="rj45" size="15" maxlength="20" 
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
										
									</tr>
									<tr>
										<td>模块： <html:text name="HuidanEntityForm" disabled="true"
												property="mokuai" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											面板： <html:text name="HuidanEntityForm" disabled="true"
												property="mianban" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											网线： <html:text name="HuidanEntityForm" disabled="true"
												property="wangxian" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											
										</td>
										
									</tr>
									<tr>
										<td>施工人： <html:text name="HuidanEntityForm" disabled="true"
												property="shigongren" size="15" maxlength="20"
												styleClass="commonTextFieldHover"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
											现场备注： <html:text name="HuidanEntityForm" disabled="true"
												property="xianchangbeizhu" size="15" maxlength="20"
												styleClass="commonTextFieldHover" onchange="isture(this)"
												onfocus="this.className='commonTextFieldMove'"
												onblur="this.className='commonTextFieldHover'" /> 
										</td>
										
									</tr>
									<tr>
										<td>备注汇总： 
												<html:textarea name="HuidanEntityForm" property="beizhuhuizong"   disabled="true"
										rows="5" cols="70"  onkeyup="if(this.value.length>250)this.value=this.value.substr(0,250)">
									</html:textarea>
										</td>
										
									</tr>
								</table>
							</td>
						</tr>

					</table>
				</div>
			</div>
			<!-- button -->
			<div name="button" class="content_button">
				<html:button property="btnBack" value="返回" styleClass="commonButton" onclick="switchBack();" />
			</div>
		</div>
		<html:hidden name="HuidanForm" property="UUID" />
		<html:hidden name="HuidanEntityForm" property="zhuangtaiHidden" styleId="zhuangtai"/>
	</html:form>
</body>
<script type="text/javascript"  language="javascript">
	function switchBack(){
		var zt = document.getElementById("zhuangtai").value;
		if (zt == 1) {
			commonSubmit('huidancheckedList.do?act=init');
		}
		if (zt == 2) {
			commonSubmit('huidanreviewList.do?act=init');
		}
	}
</script>
</html>