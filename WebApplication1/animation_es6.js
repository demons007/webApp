
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
		 	const sh="750px";
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
		 					<table style={{width:"20%"}}>
		 					<tr><td>
		 					<Spinner />
		 					
		 					</td></tr><tr><td>
		 					<div>
		 						<code style={{fontFamily:"cursive"}}><span><font size={5} style={{position: "fixed"}}>Please Wait Loading <DotArray /></font></span></code>
		 					</div></td>
		 					</tr>
		 					</table>
		 				</div>
		 					
		 				</div>
		 			)
}
}