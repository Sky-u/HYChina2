    function initList(param) {
        var type=byId("type").value;
        //默认主页
        if(type==10){
// 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.wlkg.com/center/personCenter.html", param, callback);
        }
        //绑定手机第一步
        if(type==1){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/mobileOne", param, callback);
        }
        //绑定手机第二步
        if(type==7){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/mobileTwo", param, callback);
        }
        //绑定邮箱第一步
        if(type==2){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/emailOne", param, callback);
        }
        //绑定邮箱第二步
        if(type==8){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/emailTwo", param, callback);
        }
        //绑定身份证
        if(type==3){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/card", param, callback);
        }
        //绑定交易密码第一步
        if(type==4){
// 	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/paymentPasswordOne", param, callback);
        }
        //绑定交易密码第二步
        if(type==18){
// 	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/paymentPasswordTwo", param, callback);
        }
        //绑定交易密码第三步
        if(type==19){
// 	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/paymentPasswordThree", param, callback);
        }
        //绑定认证会员
        if(type==5){
            var authentication_type='0';
            var authentication_remark='认证失败，失败原因：'+'';
            if(authentication_type==2){
                layer.alert(authentication_remark,function(index){
                    layer.close(index);
                    $.ajaxPost("http://www.weiyun5.com/foreground/safety/authentication", param, callback);
                });
            }else{
//	 param+="&"+$("#artilce").serialize();
                $.ajaxPost("http://www.weiyun5.com/foreground/safety/authentication", param, callback);
            }
        }
        //绑定登录密码
        if(type==6){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/password", param, callback);
        }
        //发布车源
        if(type==9){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carSource/index", param, callback);
        }
        //发布货源
        if(type==11){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/goodSource/index", param, callback);
        }
        //发布招聘
        if(type==12){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/recruit/index", param, callback);
        }
        //发布车辆服务
        if(type==13){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carServe/index", param, callback);
        }
        //发布求职
        if(type==14){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/resume/index", param, callback);
        }
        //修改个人信息
        if(type==15){
//	 param+="&"+$("#artilce").serialize();
//             $.ajaxPost("http://www.weiyun5.com/foreground/member/basic", param, callback);
            top.window.location.href = "http://www.wlkg.com/center/basic.html";
        }
        //修改个人企业信息
        if(type==16){
//	 param+="&"+$("#artilce").serialize();
//             $.ajaxPost("http://www.weiyun5.com/foreground/enterprise/basic", param, callback);
            top.window.location.href = "http://www.wlkg.com/center/company.html";
        }
        //绑定银行卡
        if(type==17){
//	 param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/bankCard", param, callback);
        }
        //安全信息
        if(type==20){
// 	param+="&"+$("#artilce").serialize();
//             $.ajaxPost("http://www.weiyun5.com/foreground/safety/index", param, callback);
            top.window.location.href = "http://www.wlkg.com/center/security.html";
        }
        //论坛
        if(type==30){
            top.window.location.href = "http://www.weiyun5.com/BBS/index";
        }
        //线下货源
        if(type==41){
            byId("evaluateType").value="good";
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/goodSource/lineTrade", param, callback);
        }
        //线下车源
        if(type==42){
            byId("evaluateType").value="car";
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carSource/lineTrade", param, callback);
        }
        //评价
        if(type==43){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/trade/evaluate", param, callback);
        }
        if(type==44){
            byId("evaluateType").value="car";
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carSource/trade", param, callback);
        }
        if(type==45){
            param+="&id="+byId("evaluateNum").value;
            $.ajaxPost("http://www.weiyun5.com/foreground/carSource/trade/detail", param, callback);
        }
        if(type==46){
            byId("evaluateType").value="good";
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/goodSource/trade", param, callback);
        }
        if(type==47){
            param+="&id="+byId("evaluateNum").value;
            $.ajaxPost("http://www.weiyun5.com/foreground/goodSource/trade/detail", param, callback);
        }
        //充值
        if(type==51){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/recharge/index", param, callback);
        }
        //提现
        if(type==52){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/withdrawals/index", param, callback);
        }
        //积分管理
        if(type==53){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/integral/index", param, callback);
        }
        //财务明细
        if(type==54){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/finace/index", param, callback);
        }
        //车源信息
        if(type==61){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carSource/list", param, callback);
        }
        //货源信息
        if(type==62){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/goodSource/list", param, callback);
        }
        //车辆服务信息
        if(type==63){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/carServe/list", param, callback);
        }
        //招聘信息
        if(type==64){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/recruit/list", param, callback);
        }
        //求职信息
        if(type==65){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/resume/list", param, callback);
        }
        //绑定QQ
        if(type==21){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/bindingQQ", param, callback);
        }
        //绑定微信
        if(type==22){
//	 	param+="&"+$("#artilce").serialize();
            $.ajaxPost("http://www.weiyun5.com/foreground/safety/bindingChat?code=", param, callback);
        }
    }
function callback(data) {
    $("#dataList").html(data);
}
$(function() {
    initList(param);
});
function queryMember(type,num){
    if(num!=''&&num!=null){
        byId("evaluateNum").value=num;
    }
    byId("type").value=type;
    initList();
}