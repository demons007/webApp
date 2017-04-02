<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

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
</head>
<body>
    <div id="_js_root_animation">

    </div>
    <div id="_psudo_head">

    </div>
    <div id="_psudo_body">

    </div>
    <script type="text/babel">

        class HomeAgent extends React.Component {
            constructor(props){
                super(props);
                this.state={
                };
                this._hh_home_redirect=this._hh_home_redirect.bind(this);
            }
            _hh_home_redirect(evt){
                evt.preventDefault();
                evt.stopPropagation();
                top.location.href="http://localhost:64593/WebForm2.aspx";
            }
            render(){
                return (
                    <div style={{width:"150px",height:"100%",float:"right",display:"flex",justifyContent:"center",alignItems:"center"}}>
                        <code style={{fontFamily:"cursive",cursor:"pointer"}}><font size={4} color="white" onClick={this._hh_home_redirect}>Home Page</font></code>
                    </div>
                )
            }
        }
        ReactDOM.render(<HomeAgent />,document.getElementById('_psudo_head'));
        console.log(atob(window.location.search.split('=')[1]));
        
        class AddedUser extends React.Component {
            constructor(props){
                super(props);
                this.state= {
                        mlf:[]
                    };
                this.componentDidMount=this.componentDidMount.bind(this);
            }
            componentDidMount(){
                let mn=atob(window.location.search.split('=')[1]);
                var that=this;
        let da=JSON.stringify({Ura:mn});
                console.log(da);
                $(() => {
                    $.ajax({
            type: "POST",
            url: "WebForm3.aspx/ShowUser",
            data:da,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
           
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        console.log(data);
                        that.setState({
                                mlf:data.d
                            });
                    });
                });
            }
            render(){
                if(this.state.mlf.length>0){
                return (
                    <div id="_after_table" style={{width:"98%",height:"100%",display:"flex",justifyContent:"center",marginTop:"150px",position:"absolute"}}>
                            <table style={{width:"40%",borderCollapse: "collapse"}}>
                                <thead><th><code style={{fontFamily:"cursive"}}><font size={4}>Present booking status of room number - {this.state.mlf[0]}</font></code></th></thead>
                                <tbody>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Room No</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[0]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Name</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[1]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Mobile No</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[3]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Gender</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[4]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Email</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[5]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Active</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[7]}</font></code></td></tr>
                                    <tr><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>Check in time</font></code></td><td style={{border: "1px solid black"}}><code style={{fontFamily:"cursive"}}><font size={4}>{this.state.mlf[8]}</font></code></td></tr>
                                </tbody>
                            </table>
                    </div>
                )
                }else{
                    return (
                            <div id="_after_table" style={{width:"100%",height:"100%",display:"flex",justifyContent:"center"}}>error
                    </div>
                        )
                }
            }
        }
            ReactDOM.render(<AddedUser />,document.getElementById('_psudo_body'));
    </script>
</body>
</html>
