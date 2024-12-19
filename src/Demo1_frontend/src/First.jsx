import { Demo1_backend } from 'declarations/Demo1_backend';

export default function First(){


    async function Register(){
        var name = document.getElementById("usernm").value;
        var phno = BigInt(document.getElementById("userphno").value);
        var mail = document.getElementById("usermail").value;

        console.log(name,phno,mail);

      var userdetails = {
            name :name,
            phno:phno,
            email:mail,
        };
        var answer = await Demo1_backend.adduserDetails(userdetails);
        console.log("answer",answer);
    }

    return(
        <>
            <div>
                <form>
                    <label>user name:</label>
                    <input type="text" id="usernm" /><br /><br />
                    <label>user phno:</label>
                    <input type="number" id="userphno" /><br /><br />
                    <label>user mail:</label>
                    <input type="text" id="usermail" /><br /><br />
                </form>
                <button onClick={Register}>Register</button>
            </div>
        </>
    );
}