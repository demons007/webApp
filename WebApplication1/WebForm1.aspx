<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" >
    <title>XYZ Hotel</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react-dom.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.38/browser.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
   
    <style type="text/css">
        #_psudo_head {
            width:100%;
            height:30px;
            background-color:blue;
        }
        #_psudo_body {
            width:100%;
            height:800px;
            background-color:lavender;
            margin-top:10px;
        }
    </style>
    <script type="text/javascript">
        function myResize(argument) {
            document.getElementById("_psudo_body").style.height=window.innerHeight-105+"px";
            document.getElementById("_psudo_body").style.width="100%";
            document.getElementById("_psudo_body").style.marginTop="15px";
        }
</script>
        <script type="text/javascript">
            window.addEventListener("opacity",(evt) => {
                console.log(evt.detail.message+"hi");
                        console.log("i am");
            document.getElementById("_psudo_head").style.opacity=evt.detail.message;
            document.getElementById("_psudo_body").style.opacity=evt.detail.message;
            },false);
</script>
</head>
<body onresize="myResize()">
    <div id="_js_root_animation">

    </div>
    <div id="_psudo_head">

    </div>
    <div id="_psudo_body">

    </div>

     
    <script type="text/babel">
        
class Spinner extends React.Component {
    constructor(props){
        super(props);
        this.state = {
        };
    }
    render(){
        return (
            <div className="loader loader--style5" title="4">
                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlnsXlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
        width="24px" height="30px" viewBox="0 0 24 30" style={{enableBackground:"new 0 0 50 50"}} xmlSpace="preserve">
          <rect x="0" y="0" width="4" height="20" fill="#333">
            <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0" dur="0.6s" repeatCount="indefinite" />
</rect>
<rect x="10" y="0" width="4" height="10" fill="#333">
  <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0.2s" dur="0.6s" repeatCount="indefinite" />
</rect>
<rect x="20" y="0" width="4" height="20" fill="#333">
  <animateTransform attributeType="xml"
    attributeName="transform" type="translate"
    values="0 0; 0 20; 0 0"
    begin="0.4s" dur="0.6s" repeatCount="indefinite" />
</rect>
</svg>
</div>
		 			)
		 		}
}


		 	class DotArray extends React.Component {
		 	    constructor(props){
		 			super(props);
		 	        this.state = {
		 	            max:["."]
		 	        };
		 	        this.componentDidMount=this.componentDidMount.bind(this);
		 	    }
		 	    componentDidMount(){
		 	        var x=this.state.max.length;
		 	        var IntervalOn=setInterval(
		 			()=>{
		 			    var z = this.state.max;
		 	        z.push(".");
		 	        if(z.length <= 9){
		 	            this.setState({

		 	                max:z
		 	            })
		 	        }
		 	        else
		 	        {
		 	            this.setState({

		 	                max : ["."]
		 	            })
		 	        }
		 	    },2);
		 	    sessionStorage.setItem("inti_lo",IntervalOn)
		 			
		 	}
render(){
    return (
        <div id="_max_dot" style={{display:"inline"}}>
{
    this.state.max.map( (a,b) =>{
        return (
            <span key={b}>{a}</span>
        )
} )
}
</div>
		 			)
}
}

            console.log(document.body)
		 	const sh="60px";
		 	const sw="100%";
		 	const ph={width:"100%",height:"20%",display:"flex",justifyContent:"flex-end",alignItems:"center"};
		 	const pw={width:"100%",height:"80%",display:"flex",justifyContent:"center",alignItems:"center"}
//console.log(`${sh} ${sw} lol`)
		 	
		 	class SvgContainer extends React.Component {
		 	    constructor(props){
		 			super(props);
		 	        this._unmount_me=this._unmount_me.bind(this);
		 	        this.componentWillUnmount=this.componentWillUnmount.bind(this);
		 	        this.componentWillMount=this.componentWillMount.bind(this);
		 	        this.state={
		 	            clH:this.props.Ch,
		 	            clW:this.props.Cw
		 	        };
		 	    }
		 	    componentWillMount(){
		 	        var opacityO = new CustomEvent(
                        "opacity", 
                        {
                            detail: {
                                message: "0.2",
                                time: new Date(),
                            },
                            bubbles: false,
                            cancelable: false
                        }
                        );

		 	        window.dispatchEvent(opacityO);
		 	    }
		 	    componentWillUnmount(){
		 	        console.log("llllllllll")
		 	        //document.getElementById("_head").style.opacity="1";
		 	        //document.getElementById("_head").style.opacity="1";
		 	        clearInterval(sessionStorage.getItem("inti_lo"));
		 	        console.log(document.getElementById("_psudo_head").style.opacity)
					
		 	    }
		 	    _unmount_me(evt){
		 	        evt.preventDefault();
		 	        evt.stopPropagation();
                    console.log("unm");
		 	        document.getElementById("_psudo_head").style.opacity="1";
		 	        document.getElementById("_psudo_body").style.opacity="1";
		 	        var opacity = new CustomEvent(
					"opacity", 
					{
					    detail: {
					        message: "1",
					        time: new Date(),
					    },
					    bubbles: false,
					    cancelable: false
					}
					);

		 	        window.dispatchEvent(opacity);
                    console.log("unmounting")
		 	        ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'))
		 	    }
		 	    render(){
		 	        return (
		 				<div id="_map_in_search" style={{width:this.state.clW,height:this.state.clH,position:"absolute",backgroundColor:"transparent",overflow:"hidden",zIndex:1}} ref={() => {console.log("plpo");
		 																
		 				}}>

		 				<div id="_table_p_head" style={ph} >
		 					<input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"80px",height:"50%",fontSize:"25px"}} onClick={this._unmount_me} />
		 				</div>
		 				<div id="_table_p_body" style={pw} >
		 					<table style={{width:"20%",textAlign:"center"}}>
		 					<tr><td>
		 					<Spinner />
		 					
		 					</td></tr><tr><td>
		 					<div>
		 						<code style={{fontFamily:"cursive"}}><span><font size={5} style={{position: "absolute"}}>Please Wait Loading <DotArray /></font></span></code>
		 					</div></td>
		 					</tr>
		 					</table>
		 				</div>
		 					
		 				</div>
		 			)
}
}
        'use strict';
        
        //bb

        window.addEventListener('authServe',(evt) => {
                        //console.log(evt.detail.message);
                       $(() =>{
                             let jsData=evt.detail.message;
                            console.log(jsData);
                        $.ajax({
            type: "POST",
            url: "WebForm1.aspx/AuthenticateLogin",
            data:JSON.stringify({user:jsData}),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            beforeSend:function(){
                ReactDOM.render(<SvgContainer Ch={"650px"} Cw={"98%"} />,document.getElementById('_js_root_animation'));
            },
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        console.log("auth_serve");
                       if(data.d && jsData.UserType1=="Agent")
                         top.location.href='http://localhost:64593/WebForm2.aspx';
                        else if(data.d && jsData.UserType1=="Admin")
                            top.location.href='http://localhost:64593/WebForm4.aspx';
                        else
                        alert("Invalid Id or Password");
                    });
                        });
                    },true)

        
        //head
        class InputLogin extends React.Component {
             constructor(props){
                super(props);
                this.state = {
                    idVal:"",
                    passVal:"",
                    logType:""
                };
                this.componentWillMount=this.componentWillMount.bind(this);
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this._letChgUser=this._letChgUser.bind(this);
                this._letChgPass=this._letChgPass.bind(this);
                this._selType_change=this._selType_change.bind(this);
                this._ll_click_okl=this._ll_click_okl.bind(this);
                this._unmount_me=this._unmount_me.bind(this);
            }
            _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            _ll_click_okl(evt){
                evt.preventDefault();
                evt.stopPropagation();
                console.log(`id ${this.state.idVal} password ${this.state.passVal} type ${this.state.logType} `);
                var authen = new CustomEvent(
					"authServe", 
					{
					    detail: {
					        message: {Id1:this.state.idVal,Password1:this.state.passVal,UserType1:this.state.logType},
					        time: new Date(),
					    },
					    bubbles: false,
					    cancelable: false
					}
					);

		 	        window.dispatchEvent(authen);
            }
            _selType_change(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        logType:evt.target.value
                    });
            }
            _letChgPass(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        passVal:evt.target.value
                    });
            }
            _letChgUser(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        idVal:evt.target.value
                    });
            }
            componentWillUnmount(){
                    console.log("react");
                   var opacity = new CustomEvent(
					"opacity", 
					{
					    detail: {
					        message: "1",
					        time: new Date(),
					    },
					    bubbles: false,
					    cancelable: false
					}
					);

		 	        window.dispatchEvent(opacity);
            }
            componentWillMount(){
                var opacity = new CustomEvent(
					"opacity", 
					{
					    detail: {
					        message: "0.1",
					        time: new Date(),
					    },
					    bubbles: false,
					    cancelable: false
					}
					);

		 	        window.dispatchEvent(opacity);
            }
            render(){
                return (
                    <div id="_ip_log_adm_type" style={{width:"95%",height:"830px",position:"absolute",backgroundColor:"transparent",overflow:"hidden",zIndex:1}}>
                        
                        <div style={{width:"100%",height:"20%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"100%",height:"80%",display:"flex",justifyContent:"center",alignItems:"stretch"}}>
                            <div style={{width:"30%",height:"30%",display:"block"}}>
                                <div style={{width:"100%",height:"25%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                    <select style={{fontFamily:"cursive",fontSize:"20px"}} onChange={this._selType_change}>
                                        <option value="" disabled="true" selected="true">Login type</option>
                                        <option>Admin</option>
                                        <option>Agent</option>
                                    </select>
                                </div>
                                <div style={{width:"100%",height:"25%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                    <input type="text" style={{width:"80%",height:"70%"}} value={this.state.idVal} placeholder="user id" onChange={this._letChgUser} />
                                </div>
                                <div style={{width:"100%",height:"25%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                    <input type="password" style={{width:"80%",height:"70%"}} value={this.state.passVal} placeholder="password" onChange={this._letChgPass} />
                                </div>
                                <div style={{width:"100%",height:"25%",display:"flex",justifyContent:"center",alignItems:"stretch"}}>
                                    <input type="button" value="Authenticate" style={{fontFamily:"cursive",fontSize:"20px",backgroundColor:"transparent",cursor:"pointer",borderColor:"transparent"}} onClick={this._ll_click_okl} />
                                </div>
                            </div>
                        </div>
                    </div>
                )
            }
        }
        class HeadHotelLog extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                };
                this._link_clk_log=this._link_clk_log.bind(this);
            }
            _link_clk_log(evt){
                evt.preventDefault();
                evt.stopPropagation();
                const shcv="600px";
		 	const swcv="95%";
				//ReactDOM.render(<SvgContainer Ch={shcv} Cw={swcv} />,document.getElementById('_js_root_animation'));
                ReactDOM.render(<InputLogin />,document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_cl_link" style={{width:"100%",height:"100%",display:"flex",alignItems:"center",justifyContent:"flex-end"}}>
                        <a href="#" style={{color:"white",textDecoration:"none",fontFamily:"cursive",fontSize:"20px"}} onClick={this._link_clk_log}>Sign in</a>
                    </div>
                );
            }
        }
        ReactDOM.render(<HeadHotelLog />,document.getElementById('_psudo_head'));

        // body


        class BodyHotelLog extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    admin:"Welcome admin please use your admin credentials to proceed",
                    agent:"Welcome agent please use your agent credentials to proceed",
                    inpIdVal:"",
                    inpPasVal:"",
                    dName:"abc hotel",
                    about:"About us",
                    room:"Book rooms",
                    mag:"Magazines",
                    policy:"Policies",
                    hotImg:"a.jpg",
                    hyper:this.props.Hyper,
                    codeColor:"black"
                };
                this._policy=this._policy.bind(this);
                this._mag=this._mag.bind(this);
                this._room=this._room.bind(this);
                this._about=this._about.bind(this);
                this.componentWillMount=this.componentWillMount.bind(this);
                this._each_code_enter=this._each_code_enter.bind(this);
                this._each_code_out=this._each_code_out.bind(this);
            }
            componentWillMount(){
                  let a=["a.jpg","eye.jpg","eye2.jpg","logo.jpg","message.jpg"]
                let itr=0;
              
                setInterval(function(){ 
                    this.setState({
                            hotImg:a[itr]
                        });
                        if(itr<=3){
                        itr=itr+1;
                        }else{
                            itr=0;
                        }
                     }.bind(this), 3000);

            }
            _each_code_out(evt){
                evt.preventDefault();
                evt.stopPropagation();
                evt.target.style.color="black";
            }
            _each_code_enter(evt){
                evt.preventDefault();
                evt.stopPropagation();
                evt.target.style.color="blue";
            }
            _policy(evt){
                evt.preventDefault();
                evt.stopPropagation();
            }
            _mag(evt){
                evt.preventDefault();
                evt.stopPropagation();
            }
            _room(evt){
                evt.preventDefault();
                evt.stopPropagation();
            }
            _about(evt){
                evt.preventDefault();
                evt.stopPropagation();
            }
            render(){
                return (
                    <div id="_p_b" style={{width:"100%",height:"100%"}}>
                        <div style={{width:"100%",height:"700px"}}>
                       <div id="_id_mm_1" style={{width:"70%",height:"100%",display:"inline",float:"left"}}>
                            <div id="_cr_tcs" style={{width:"100%",height:"20%",display:"flex",justifyContent:"center",alignItems:"center"}} >
                                <div id="" style={{width:"30%",display:"block",height:"80%"}}>
                                    <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                        <img src="a.jpg" alt="logo" style={{width:"40%",height:"70%",verticalAlign:"center"}} /><code style={{fontFamily:"cursive"}}><font size={5}>{this.state.dName}</font></code>
                                    </div>
                                </div>
                            </div>
                            <div id="_cr_tcs_ticket" style={{width:"100%",height:"80%"}} >
                                <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                    <div style={{width:"70%",height:"80%"}}>
                                        <img src={this.state.hotImg} style={{width:"100%",height:"100%"}} />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="_id_mm_2" style={{width:"29%",height:"100%",display:"inline",float:"right"}}>
                            <div style={{width:"100%",height:"70%",marginTop:"30%"}}>
                                {
                                    this.state.hyper.map( (a,b) => {
                                                return (
                                                    <div key={b} style={{width:"100%",height:"40px",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                                        <code style={{fontFamily:"cursive"}}><font size={4} style={{cursor:"pointer"}} onMouseEnter={this._each_code_enter} onMouseOut={this._each_code_out}>{a}</font></code>
                                                    </div>
                                                )
                                        } )
                                }
                            </div>
                        </div></div>
                        <div id="_id_mm_3" style={{width:"100%",height:"100px"}}>
                            <div id="_root_about" style={{width:"25%",height:"100%",display:"inline",float:"left"}}>
                                <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                    <code style={{fontFamily:"cursive"}}>
                                        <font size={5} style={{cursor:"pointer"}} onClick={this._about}>
                                            {this.state.about}
                                        </font>
                                    </code>
                                </div>
                            </div>
                            <div id="_root_room_book" style={{width:"25%",height:"100%",display:"inline",float:"left"}}>
                                <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                    <code style={{fontFamily:"cursive"}}>
                                        <font size={5} style={{cursor:"pointer"}} onClick={this._room}>
                                            {this.state.room}
                                        </font>
                                    </code>
                                </div>
                            </div>
                            <div id="_root_magzine" style={{width:"25%",height:"100%",display:"inline",float:"left"}}>
                                <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                    <code style={{fontFamily:"cursive"}}>
                                        <font size={5} style={{cursor:"pointer"}} onClick={this._mag}>
                                            {this.state.mag}
                                        </font>
                                    </code>
                                </div>
                            </div>
                            <div id="_root_policy" style={{width:"25%",height:"100%",display:"inline",float:"left"}}>
                                <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                                    <code style={{fontFamily:"cursive"}}>
                                        <font size={5} style={{cursor:"pointer"}} onClick={this._policy}>
                                            {this.state.policy}
                                        </font>
                                    </code>
                                </div>
                            </div>
                        </div>
                    </div>
                );
            }
        }
        ReactDOM.render(<BodyHotelLog Hyper={["Meetings & Weddings","Bars & Restaurant","Rooms & Sweets","Entertainment","Dining"]} />,document.getElementById('_psudo_body'));
    </script>
</body>
</html>
