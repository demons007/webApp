<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

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

        class NavigatePage extends React.Component {
            constructor(props){
                super(props);
                this._page_home_adm=this._page_home_adm.bind(this);
            }
            _page_home_adm(evt){
                evt.preventDefault();
                evt.stopPropagation();
                top.location.href="http://localhost:64593/WebForm4.aspx";
            }
            render(){
                return (
                    <div style={{width:"150px",height:"100%",display:"flex",justifyContent:"center",alignItems:"center",float:"right"}}>
                        <code style={{fontFamily:"cursive"}}><font size={4} color="white" onClick={this._page_home_adm}>Home page</font></code>
                    </div>
                );
            }
        }
        ReactDOM.render(<NavigatePage />,document.getElementById('_psudo_head'));

        class DeletedInformation extends React.Component {
            constructor(props){
                super(props);
                this.state = {
                    delRoom:this.props.Del
                };
            }
            render(){
                return (
                    <div style={{width:"100%",height:"100%",display:"flex",justifyContent:"center",alignItems:"baseline"}}>
                        <code style={{fontFamily:"cursive"}}><font size={4}>User deleted with room no --</font><font size={5}>{this.state.delRoom}</font></code>
                    </div>
                );
            }
        }

        $(() => {
        let mn=atob(window.location.search.split('=')[1]);
        let da=JSON.stringify({Ura:mn});
                    $.ajax({
            type: "POST",
            url: "WebForm5.aspx/AdminDeleteUser",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
           data:da,
            error: function (response) {
               console.log(response);
            },
            async:true
        }).done((data) => {
                        console.log(data);
                       ReactDOM.render(<DeletedInformation Del={data.d} />,document.getElementById('_psudo_body'));
                    });
                });
    </script>
</body>
</html>
