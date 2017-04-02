<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
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
            overflow-y:scroll;
        }
    </style>
</head>
<body>
        <div id="_js_root_animation">

    </div>
    <div id="_psudo_head">

    </div>
    <div id="_psudo_body">

    </div>
    <script type="text/babel">
        class WelcomeAdmin extends React.Component{
            constructor(props){
                super(props);
            }
            render(){
                return (
                    <div id="welcome_adm" style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"center"}}>
                        <code style={{fontFamily:"cursive"}}><font size={4} color="white">Welcome admin</font></code>
                    </div>
                );
            }
        }
        ReactDOM.render(<WelcomeAdmin />,document.getElementById('_psudo_head'));

        class BodyAdminEdit extends React.Component{
            constructor(props){
                super(props);
                this.state = {
                    userEdit:[]
                };
                this.componentDidMount=this.componentDidMount.bind(this);
                this._each_edit_usr=this._each_edit_usr.bind(this);
            }
            _each_edit_usr(evt){
                evt.preventDefault();
                evt.stopPropagation();
                var r_no=JSON.parse(evt.target.parentElement.lastChild.value);
                console.log(JSON.parse(evt.target.parentElement.lastChild.value));
                top.location.href='http://localhost:64593/WebForm5.aspx?room_no='+btoa(r_no);
            }
            componentDidMount(){
                var that=this;
                $(() => {
                    $.ajax({
            type: "POST",
            url: "WebForm4.aspx/AdminEditUser",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
           
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        console.log(data);
                       that.setState({
                                userEdit:data.d
                            });
                        console.log(that.state.userEdit)
                    });
                });
            }
            render(){
                return (
                    <div style={{width:"98%",height:"100%",textAlign:"center"}}>
                            
                        {
                            this.state.userEdit.map( (a,b) => {
                                   
                                            return (
                                        <table key={b} style={{width:"50%",backgroundColor:"white",marginTop:"15px",display:"inline"}}><thead><th><a href="#" style={{textDecoration:"none"}} onClick={this._each_edit_usr}>Delete this user</a><input type="hidden" value={JSON.stringify(a[0])} /></th></thead><tbody style={{backgroundColor:"white",marginRight:"10px"}}>
                                                {a.map( (x,y) => {
                                                    console.log(x);
                                                    return (
                                    <tr key={y}><td>{x}</td></tr>
                                                );
                                                } )
                                    }</tbody></table>
                                                );
                                    } )
                        }
                    </div>
                );
            }
        }
        ReactDOM.render(<BodyAdminEdit />,document.getElementById('_psudo_body'));
    </script>
</body>
</html>
