        class Esmain extends React.Component{
            constructor(props){
                super(props);
                this._let_ok=this._let_ok.bind(this);
            }
            _let_ok(evt){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    console.log(this);
                    if (this.readyState == 4 && this.status == 200) {
                        // Action to be performed when the document is read;
                        var serverResponse = xhttp.responseText;
                        console.log(serverResponse);
                    }
                };
                var a="hi";
                xhttp.open("POST", "WebForm1.aspx/test", true);
                
                xhttp.setRequestHeader("content-type", "text-plain; charset=utf-8");
                xhttp.send(a);
            }
            render(){
                return (
                    <div onClick={this._let_ok}>
                        hi
                    </div>
                   )
            }
}
ReactDOM.render(<Esmain />,document.getElementById('_one'));