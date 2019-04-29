<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <%@include file="../common/common.jsp"%>
    <link href="${pageContext.request.contextPath}/css/register.css"
          rel="stylesheet" type="text/css" />
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

</head>
<body>
<div class="container header">
      <%@include file="../common/head.jsp"%>
</div>	<div class="container register">
    <div class="span24">
        <div class="wrap">
            <div class="main clearfix">
                <div class="title">
                    <strong>会员注册</strong>USER REGISTER
                </div>
                <form id="registerForm"  method="post"  style="font-size: 14px;" action="${pageContext.request.contextPath}/user/regist.action">
                    <table>
                        <tbody>
                        <tr>
                            <th>
                                <label><span class="requiredField">*</span>用户名:</label>
                            </th>
                            <td>
                                <input type="text" id="username" name="username" class="text"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>密&nbsp;&nbsp;码:
                            </th>
                            <td>
                                <input type="password" id="password" name="password" class="text">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>确认密码:
                            </th>
                            <td>
                                <input type="password" name="repassword" class="text">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>E-mail:
                            </th>
                            <td>
                                <input type="email" id="email" name="email" class="text" maxlength="200" required="required" placeholder="xxx@xx.com">
                                <span class="checmessage" id="message_email"></span>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>手机号:
                            </th>
                            <td>
                                <input type="tel" id="phone" name="phone" class="text"  required="required" placeholder="11位数字">
                            </td>
                        </tr>
                        <tr>
                            <th>姓名:</th>
                            <td>
                                <input type="text" name="memberAttribute_1" class="text" maxlength="200">
                            </td>
                        </tr>
                        <tr>
                            <th>性别:</th>
                            <td>
                                <span class="fieldSet">
                                        <label>
                                            <input type="radio" name="memberAttribute_2" value="male" checked="checked">男
                                        </label>
                                        <label>
                                            <input type="radio" name="memberAttribute_2" value="female">女
                                        </label>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th>出生日期:</th>
                            <td>
                                <input type="date" name="memberAttribute_3" class="text" >
                            </td>
                        </tr>

                        <tr>
                            <th>地址:</th>
                            <td>
                                <input type="text" name="addr" class="text">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span class="requiredField">*</span>验证码:
                            </th>
                            <td>
                                <span class="fieldSet">
                                    <input type="text" id="captcha" name="captcha" class="text captcha" maxlength="4"  required="required">
                                      <img  id="captchaImage"
                                            class="captchaImage"
                                            src="${pageContext.request.contextPath}/user/getImg.action"
                                            title="点击更换验证码"  onclick="this.src='${pageContext.request.contextPath}/user/getImg.action?num='+Math.random();"/>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp; </th>
                            <td>
                                <input type="submit" class="submit" value="同意以下协议并注册" id="regBtn">
                            </td>
                        </tr>
                        <tr>
                            <th>&nbsp; </th>
                            <td> 注册协议</td>
                        </tr>
                        <tr>
                            <th>&nbsp;</th>
                            <td>
                                <div id="agreement" class="agreement" style="height: 200px;">
                                    <p>尊敬的用户欢迎您注册成为本网站会员。请用户仔细阅读以下全部内容。如用户不同意本服务条款任意内容，请不要注册或使用本网站服务。如用户通过本网站注册程序，即表示用户与本网站已达成协议，自愿接受本服务条款的所有内容。此后，用户不得以未阅读本服务条款内容作任何形式的抗辩。</p> <p>一、本站服务条款的确认和接纳<br>本网站涉及的各项服务的所有权和运作权归本网站所有。本网站所提供的服务必须按照其发布的服务条款和操作规则严格执行。本服务条款的效力范围及于本网站的一切产品和服务，用户在享受本网站的任何服务时，应当受本服务条款的约束。</p> <p>二、服务简介<br>本网站运用自己的操作系统通过国际互联网络为用户提供各项服务。用户必须:  1. 提供设备，如个人电脑、手机或其他上网设备。 2. 个人上网和支付与此服务有关的费用。</p> <p>三、用户在不得在本网站上发布下列违法信息<br>1. 反对宪法所确定的基本原则的； 2. 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3. 损害国家荣誉和利益的； 4. 煽动民族仇恨、民族歧视，破坏民族团结的； 5. 破坏国家宗教政策，宣扬邪教和封建迷信的； 6. 散布谣言，扰乱社会秩序，破坏社会稳定的； 7. 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8. 侮辱或者诽谤他人，侵害他人合法权益的； 9. 含有法律、行政法规禁止的其他内容的。</p> <p>四、有关个人资料<br>用户同意:  1. 提供及时、详尽及准确的个人资料。 2. 同意接收来自本网站的信息。 3. 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。 4. 本网站不公开用户的姓名、地址、电子邮箱和笔名。除以下情况外:  a) 用户授权本站透露这些信息。 b) 相应的法律及程序要求本站提供用户的个人资料。</p> <p>五、服务条款的修改<br>本网站有权在必要时修改服务条款，一旦条款及服务内容产生变动，本网站将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。</p> <p>六、用户隐私制度<br>尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的:  1. 遵守有关法律规定，遵从本网站合法服务程序。 2. 保持维护本网站的商标所有权。 3. 在紧急情况下竭力维护用户个人和社会大众的隐私安全。 4. 符合其他相关的要求。</p> <p>七、用户的帐号、密码和安全性<br>用户一旦注册成功，将获得一个密码和用户名。用户需谨慎合理的保存、使用用户名和密码。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通告本网站。   八、 拒绝提供担保 用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p> <p>九、有限责任<br>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失，同时会尽量避免这种损害的发生。</p> <p>十、用户信息的储存和限制<br>本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违背本网站服务条款的规定，本网站有权中断对其提供服务的权利。</p> <p>十一、用户管理<br>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律和国际法律标准的。用户必须遵循:  1. 使用网络服务不作非法用途。 2. 不干扰或混乱网络服务。 3. 遵守所有使用网络服务的网络协议、规定、程序和惯例。 用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。 若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户违反法律的证据。</p> <p>十二、通告<br>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p> <p>十三、信息内容的所有权<br>本网站定义的信息内容包括: 文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p> <p>十四、法律<br>本协议的订立、执行和解释及争议的解决均应适用中华人民共和国的法律。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</p>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="login">
                        <div class="ad">
                            <dl>
                                <dt> 注册即享受</dt>
                                <dd> 正品保障、正规发票</dd>
                                <dd> 货到付款、会员服务</dd>
                                <dd>自由退换、售后上门</dd>
                            </dl>
                        </div>							<dl>
                        <dt>已经拥有账号了？</dt>
                        <dd>
                            立即登录即可体验在线购物！
                            <a href="./会员登录.htm">立即登录</a>
                        </dd>
                    </dl>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container footer">
    <%@include file="../common/footer.jsp"%>
</div>
<div id="_my97DP" style="position: absolute; top: -1970px; left: -1970px;"><iframe style="width: 190px; height: 191px;" src="./会员注册 - Powered By Mango Team_files/My97DatePicker.htm" frameborder="0" border="0" scrolling="no"></iframe></div>
<script type="text/javascript">
       $(function () {
           alert(111);
        $("#registerForm").validate({

            rules:{
                username:{
                    required:true,
                    checkName:true
                },
                password:{
                    required:true,
                    checkPwd:true
                },
                repassword:{
                    required:true,
                    equalTo:"#password"
                }
                // phone:{
                //                //     required:true,
                //                //     checkMobile:true
                //                // }

            },
            messages: {
                username: {
                    required:"&nbsp;&nbsp;用户名必填"
                },

                password: {
                    required: "&nbsp;&nbsp;请输入密码"
                },
                repassword: {
                    required: "&nbsp;&nbsp;请输入确认密码",
                    equalTo: "&nbsp;&nbsp;密码输入不一致"
                },
                email:{
                    required: "&nbsp;&nbsp;请输入一个邮件地址",
                    checkEmail:true
                }
                // phone:{
                //     required: "&nbsp;&nbsp;请输入一个手机号",
                //     checkMobile:true
                // }

            }
        });
        //自定义校验规则
        $.validator.addMethod("checkName",function(value,element,params){
            var checkName = /^[a-zA-Z0-9_$]{6,18}$/g;
            return this.optional(element)||(checkName.test(value));
        },"&nbsp;&nbsp;只允许6-18位数字、字母、下画线或$");

        $.validator.addMethod("checkPwd",function(value,element,params){
            var checkPwd = /^[a-zA-Z0-9_$]{6,18}$/g;
            return this.optional(element)||(checkPwd.test(value));
        },"&nbsp;&nbsp;只允许6-18位数字、字母、下画线或$");

        $.validator.addMethod("checkEmail",function(value,element,params){
            var checkEmail = /^[a-z0-9]+@([a-z0-9]+\.)+[a-z]{2,4}$/i;
            return this.optional(element)||(checkEmail.test(value));
        },"&nbsp;&nbsp;请输入正确的邮箱");

        // $.validator.addMethod("checkMobile", function(value, element) {
        //     var length = value.length;
        //     var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
        //     return this.optional(element) || (length == 11 && mobile.test(value));
        // }, "&nbsp;&nbsp;请正确填写您的手机号码");

    });

</script>
</body>
</html>