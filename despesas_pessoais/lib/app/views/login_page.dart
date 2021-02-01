import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.green,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bem Vindo!",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Text("Mantenha seus gastos em dia",
                        style: TextStyle(
                          color: Colors.grey[350],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Digite seu email"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text("Senha", style: TextStyle(fontSize: 16)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "seuemail@provedor.com.br"),
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              child: Text("Login"),
                              onPressed: () {},
                              textColor: Colors.white,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Esqueci minha senha",
                          style: TextStyle(
                            color: Colors.grey[350],
                          )),
                    ),
                    Center(
                      child: FlatButton(
                        child: Text("Criar uma conta"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/signIn");
                        },
                        height: 50,
                        textColor: Colors.black,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
