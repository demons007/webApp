<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
            height:1000px;
            background-color:lavender;
            margin-top:10px;
        }
    </style>
     <style type="text/css">
         .grow { transition: all .2s ease-in-out; }
            .grow:hover { transform: scale(1.1); background-color:white;}
     </style>
     <script type="text/javascript">
            window.addEventListener("opacity",(evt) => {
                console.log(evt.detail.message+"hi");
                        console.log("i am");
            document.getElementById("_psudo_head").style.opacity=evt.detail.message;
            document.getElementById("_psudo_body").style.opacity=evt.detail.message;
            },false);
</script>
</head>
<body>
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

        class PopupEach extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    name_u:"",
                    add_u:"",
                    ph_no:"",
                    chk_in:"",
                    email:"",
                    gend:""
                };
                this.componentWillMount=this.componentWillMount.bind(this);
                this._xyz=this._xyz.bind(this);
                this._change_name=this._change_name.bind(this);
                this._change_add=this._change_add.bind(this);
                this._change_ph=this._change_ph.bind(this);
                this._fl_chng=this._fl_chng.bind(this);
                this._hh_chng_dt=this._hh_chng_dt.bind(this);
                this._unmount_me=this._unmount_me.bind(this);
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this._change_em=this._change_em.bind(this);
                this._gend_sel=this._gend_sel.bind(this);
            }
            _gend_sel(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        gend:evt.target.value
                    });
            }
            _change_em(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        email:evt.target.value
                    })
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
            _hh_chng_dt(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        chk_in:evt.target.value
                    })
            }
            _fl_chng(evt){
                evt.preventDefault();
                evt.stopPropagation();
                evt.persist();
                console.log("hi");
                 var reader  = new FileReader();
                var file=evt.target.files[0];
                //console.log(file);
                 
                            //console.log(jsData);
  reader.onloadend = function () {
    $(() =>{
            var xc=reader.result;
            console.log("hi       "+typeof reader.result);
        let jsData=JSON.stringify({name:reader.result,f_name:file.name});
                 //let jsData=JSON.stringify({name:file,f_name:file.name});
            
        //console.log(formData)
                            console.log(jsData);
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/OpenUriSaveIm",
            data:jsData,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
           
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        sessionStorage.urlId=data.d;
                        console.log(sessionStorage.urlId);
                    });
                        });
  }
  reader.readAsDataURL(file);
            }
            _change_name(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        name_u:evt.target.value
                    });
            }
        _change_add(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        add_u:evt.target.value
                    });
            }
            _change_ph(evt){
                evt.preventDefault();
                evt.stopPropagation();
                this.setState({
                        ph_no:evt.target.value
                    });
            }
            _xyz(evt){
                evt.preventDefault();
                evt.stopPropagation();
                console.log("hi");
                var r_no=this.state.add_u;
                let jsData={Name:this.state.name_u,RoomNo:this.state.add_u,Phone:this.state.ph_no,Email:this.state.email,FilePath:sessionStorage.urlId,Gender:this.state.gend};
                $(() =>{
                 
                            console.log(jsData);
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/AddUser",
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
                        //top.location.href='http://localhost:64593/WebForm2.aspx';
                            console.log(data.d);
                            if(data.d=="Guest Added"){
                                top.location.href='http://localhost:64593/WebForm3.aspx?room_no='+btoa(r_no);
                            }
                    });
                        });
                
            }
            componentWillMount(){
                var opacityO = new CustomEvent(
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

		 	        window.dispatchEvent(opacityO);
            }
        _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_root_anim" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"100%",height:"10%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"98%",height:"90%",display:"flex",justifyContent:"center",marginTop:"100px"}}>
                        <div style={{width:"50%",height:"50%",display:"block",textAlign:"center"}}>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <code style={{fontFamily:"cursive"}}><font size={4}>Please enter following details to proceed</font></code>
                        </div>
                         <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.name_u} placeholder="name" onChange={this._change_name} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"5px"}}> 
                            <input type="text" style={{width:"20%",height:"30px"}} value={this.state.add_u} placeholder="room no" onChange={this._change_add} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"5px"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.ph_no} placeholder="phone" onChange={this._change_ph} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"5px"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.email} placeholder="email" onChange={this._change_em} />
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"5px"}}> 
                            <select style={{fontSize:"18px",fontFamily:"cursive"}} onChange={this._gend_sel}>
                                <option value="" disabled="true" selected="true">Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block",marginTop:"5px"}}> 
                            <label><input type="file" name="file" style={{width:"50%",height:"30px"}} placeholder="Please select file" onChange={this._fl_chng} /></label>
                            
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="button" style={{width:"50%",height:"30px"}} value="proceed" onClick={this._xyz} />
                        </div>
                        </div>
                        </div>
                    </div>
                )
            }
        }

        class ExpenseInfo extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    room:this.props.Room,
                    showInfo:this.props.Show
                };
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this.componentWillMount=this.componentWillMount.bind(this);
                this._unmount_me=this._unmount_me.bind(this);
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
                var opacityO = new CustomEvent(
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

		 	        window.dispatchEvent(opacityO);
            }
        _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_root_anim" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"100%",height:"10%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"98%",height:"90%",display:"flex",justifyContent:"center",marginTop:"100px"}}>
                        <div style={{width:"50%",height:"50%",display:"block",textAlign:"center"}}>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <code style={{fontFamily:"cursive"}}><font size={4}>Expense info of room no -- {this.state.room}</font></code>
                        </div>
                         <div style={{width:"100%",display:"flex",justifyContent:"center",fontSize:"xx-large"}}> <table style={{borderCollapse:"separate",borderSpacing:"10px 20px"}}><thead><th>Room No</th><th>Item</th><th>Rate</th><th>Quantity</th></thead><tbody>
                            {
                                this.state.showInfo.map( (a,b) => {
                                            return (
                                                <tr key={b}>
                                                    {
                                                        a.map( (x,y) => {
                                                                return (
                                                                    <td key={y}>{x}</td>
                                                                );
                                                            } )
                                                    }
                                                </tr>
                                            );
                                       } )
                            }
                        </tbody></table></div>
                        
                        </div>
                        </div>
                    </div>
                );
            }
        }


        var st=new Map();

        class AddExpense extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    payList:[],
                    roomNo:"",
                    count:st,
                    jData:[{Name:"laddu",Rate:"200"},{Name:"barfi",Rate:"200"},{Name:"rasgulle",Rate:"200"},{Name:"kalajamun",Rate:"200"}]
                };
                this._unmount_me=this._unmount_me.bind(this);
                this.componentWillMount=this.componentWillMount.bind(this);
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this._search_prod=this._search_prod.bind(this);
                this._room_no=this._room_no.bind(this);
                this._changes=this._changes.bind(this);
                this._add_exp=this._add_exp.bind(this);
                this._xyz=this._xyz.bind(this);
                this._e_count=this._e_count.bind(this);
            }
                _e_count(evt){
                    evt.preventDefault();
                    evt.stopPropagation();
                    st.set(evt.target.parentElement.lastChild.value,evt.target.value);
                    console.log(st);
                }
                _xyz(evt){
                    evt.preventDefault();
                    evt.stopPropagation();
                    console.log(this.state.roomNo);
                    console.log(this.state.payList);
                   
                        var cst={item:"",quantity:"",cost:""};
                        var ar=[];
                        this.state.payList.forEach(function(key,value, index) {
                                
                                let ax={Name:JSON.parse(value).Name,Rate:JSON.parse(value).Rate,Quantity:key};
                                console.log(ax);
                                ar.push(ax);
                            });
                        console.log(ar);
                        var rNx=this.state.roomNo;
                         var fg=JSON.stringify({r_no:this.state.roomNo,cost:ar});
                    $(() =>{
                 
                            
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/AddExpense",
            data:fg,
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
                        //top.location.href='http://localhost:64593/WebForm2.aspx';
                            console.log(data.d);
                        ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'))
                        ReactDOM.render(<ExpenseInfo Show={data.d} Room={rNx}  />,document.getElementById('_js_root_animation'));
                            
                    });
                        });
                }
                _add_exp(evt){
                    //let st=this.state.payList;
                    var v1=evt.target.parentElement.previousSibling.firstChild.value;
                    console.log(v1);
                    st.set(evt.target.parentElement.lastChild.value,evt.target.parentElement.previousSibling.firstChild.value);
                        this.setState({
                                payList:st
                            });
                    console.log(evt.target.parentElement.lastChild.value)
                }
                _changes(evt)
                {
                    evt.preventDefault();
                    evt.stopPropagation();
                    
                }
                _search_prod(evt){
                    evt.preventDefault();
                    evt.stopPropagation();
                }
                _room_no(evt){
                    evt.preventDefault();
                    evt.stopPropagation();
                    this.setState({
                        roomNo:evt.target.value
                    })
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
                var opacityO = new CustomEvent(
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

		 	        window.dispatchEvent(opacityO);
            }
        _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_root_anim_exp" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"100%",height:"10%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"98%",height:"90%",display:"flex",justifyContent:"center",marginTop:"100px"}}>
                        <div style={{width:"50%",height:"50%",display:"block",textAlign:"center"}}>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <code style={{fontFamily:"cursive"}}><font size={4}>Check the checkbox againgst item to buy</font></code>
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.name_u} placeholder="room no" onChange={this._room_no} />
                        </div>
                         <div style={{width:"100%",height:"200px",display:"block"}}> 
                            <table style={{width:"100%"}}><tbody>
                            {
                                
                                this.state.jData.map( (a,b) =>{
                                        return (
                                        
                                            <tr key={b}><td>{a.Name}</td><td>{a.Rate}</td><td><input type="number" placeholder="count" /><input type="hidden" value={JSON.stringify(a)} /></td><td><input type="checkbox" onClick={this._add_exp} /><input type="hidden" value={JSON.stringify(a)} /></td>
                                            </tr>
                                        
                                        )
                                    } )
                            }
                        </tbody></table>
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="button" style={{width:"50%",height:"30px"}} value="Book Expense" onClick={this._xyz} />
                        </div>
                        </div>
                        </div>
                    </div>
                )
            }
        }


            class MoreOnBillGenerate extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    room:this.props.Room,
                    showInfo:this.props.Show,
                    totalAmt:this.props.Total
                };
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this.componentWillMount=this.componentWillMount.bind(this);
                this._unmount_me=this._unmount_me.bind(this);
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
                var opacityO = new CustomEvent(
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

		 	        window.dispatchEvent(opacityO);
            }
        _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_root_anim" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"100%",height:"10%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"98%",height:"90%",display:"flex",justifyContent:"center",marginTop:"100px"}}>
                        <div style={{width:"50%",height:"50%",display:"block",textAlign:"center"}}>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <code style={{fontFamily:"cursive"}}><font size={4}>Expense info of room no -- {this.state.room}</font></code>
                        </div>
                         <div style={{width:"100%",display:"flex",justifyContent:"center",fontSize:"xx-large"}}> <table style={{borderCollapse:"separate",borderSpacing:"10px 20px"}}><thead><th>Room No</th><th>Item</th><th>Rate</th><th>Quantity</th><th>Applied rate</th></thead><tbody>
                            {
                                this.state.showInfo.map( (a,b) => {
                                            return (
                                                <tr key={b}>
                                                    {
                                                        a.map( (x,y) => {
                                                                return (
                                                                    <td key={y}>{x}</td>
                                                                );
                                                            } )
                                                    }
                                                </tr>
                                            );
                                       } )
                            }
                        <tr><td></td><td></td><td></td><td>Total - </td><td>{this.state.totalAmt}</td></tr>
                        </tbody></table></div>
                        
                        </div>
                        </div>
                    </div>
                );
            }
        }




        class GenerateBill extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    r_no:"",
                    totCost:""
                };
                this._room_no=this._room_no.bind(this);
                this._unmount_me=this._unmount_me.bind(this);
                this.componentWillMount=this.componentWillMount.bind(this);
                this.componentWillUnmount=this.componentWillUnmount.bind(this);
                this._g_bill=this._g_bill.bind(this);
            }
            _g_bill(evt){
                evt.preventDefault();
                evt.stopPropagation();
                    var rNo=this.state.r_no;
                    var tct=JSON.stringify({R_n:rNo});
                $(() =>{
                 
                        $.ajax({
            type: "POST",
            url: "WebForm2.aspx/GenerateBill",
            data:tct,
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
                        //top.location.href='http://localhost:64593/WebForm2.aspx';
                            console.log(data.d);
                            var ds=data.d;
                            var gfAr=[];
                            var tot=0;
                            ds.map( (a,b) => {
                                    let dcs=a[2]*a[3];
                                        tot=tot+dcs;
                                        a.push(dcs);
                                        gfAr.push(a);
                                    } )
                                console.log(gfAr);
                                console.log("next");
                                console.log(ds);
                                console.log(tot);
                        ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'))
                        ReactDOM.render(<MoreOnBillGenerate Show={data.d} Room={rNo} Total={tot}  />,document.getElementById('_js_root_animation'));
                            
                    });
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
            _room_no(evt){
                evt.preventDefault();
                evt.stopPropagation();
                    this.setState({
                            r_no:evt.target.value
                        });
            }
            componentWillMount(){
                var opacityO = new CustomEvent(
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

		 	        window.dispatchEvent(opacityO);
            }
        _unmount_me(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.unmountComponentAtNode(document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div id="_root_anim_exp" style={{width:"98%",height:"1000px",position:"absolute",zIndex:"2"}}>
                        <div style={{width:"100%",height:"10%",display:"flex",justifyContent:"flex-end",alignItems:"center"}}>
                            <input type="image" src="Cancel.png" name="_bt_close_pop" id="_bt_close_pop" style={{width:"50px",height:"50px",fontSize:"25px",float:"right"}} onClick={this._unmount_me} />
                        </div>
                        <div style={{width:"98%",height:"90%",display:"flex",justifyContent:"center",marginTop:"100px"}}>
                        <div style={{width:"50%",height:"50%",display:"block",textAlign:"center"}}>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <code style={{fontFamily:"cursive"}}><font size={4}>please enter room no to generate bill</font></code>
                        </div>
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="text" style={{width:"50%",height:"30px"}} value={this.state.r_no} placeholder="room no" onChange={this._room_no} />
                        </div>
                         
                        <div style={{width:"100%",height:"50px",display:"block"}}> 
                            <input type="button" style={{width:"50%",height:"30px"}} value="Generate bill" onClick={this._g_bill} />
                        </div>
                        </div>
                        </div>
                    </div>
                );
            }
        }


        class BodyOfMain extends React.Component {
            constructor(props){
                super(props);
             this._ok_l_c=this._ok_l_c.bind(this);
             this._ok_l_c_exp=this._ok_l_c_exp.bind(this);
             this._ok_l_c_g_bill=this._ok_l_c_g_bill.bind(this);
             this._mm_mouse_scale=this._mm_mouse_scale.bind(this);
            }
            _mm_mouse_scale(evt){
                evt.preventDefault();
                evt.stopPropagation();
            }
            _ok_l_c_g_bill(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.render(<GenerateBill />,document.getElementById('_js_root_animation'));
            }
            _ok_l_c_exp(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.render(<AddExpense />,document.getElementById('_js_root_animation'));
            }
            _ok_l_c(evt){
                evt.preventDefault();
                evt.stopPropagation();
                ReactDOM.render(<PopupEach />,document.getElementById('_js_root_animation'));
            }
            render(){
                return (
                    <div style={{width:"100%",height:"100%"}}>
                        <div style={{width:"100%",height:"25%"}}>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <div className="grow" style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                <a href="#" onClick={this._ok_l_c_g_bill} style={{textDecoration:"none",fontSize:"20px"}}>generate bill
                                </a>
                                </div>
                            </div>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <div className="grow" style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                <a href="#" onClick={this._ok_l_c_exp} style={{textDecoration:"none",fontSize:"20px"}}>add expences
                                </a>
                                </div>
                            </div>
                            <div style={{width:"33%",display:"inline",float:"left",height:"100%"}}>
                                <div className="grow" style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                                <a href="#" onClick={this._ok_l_c} style={{textDecoration:"none",fontSize:"20px"}}>add guest
                                </a>
                                </div>
                            </div>
                        </div>
                         <div style={{width:"100%",height:"35%"}}>
                        </div>
                        <div style={{width:"100%",height:"35%"}}>
                        </div>
                    </div>
                );
            }
        }
        ReactDOM.render(<BodyOfMain />,document.getElementById('_psudo_body'));
        class LogOut extends React.Component {
            constructor(props){
                super(props);
                this._log_out=this._log_out.bind(this);
            }
            _log_out(evt){
                evt.preventDefault();
                evt.stopPropagation();
                alert("You have been successfully logout from the portal..... have a best day ahead");
                top.location.href="http://localhost:64593/WebForm1.aspx";
            }
            render(){
                return (
                    <div style={{width:"150px",height:"100%",display:"flex",justifyContent:"center",alignItems:"center",float:"right"}}>
                        <code style={{fontFamily:"cursive"}}><font size={4} color="white" onClick={this._log_out}>Logout</font></code>
                    </div>
                );
            }
        }
        ReactDOM.render(<LogOut />,document.getElementById('_psudo_head'));
    </script>
</body>
</html>
