import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loading = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    //Tela Login
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //Define a cor de fundo do container
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(22, 255, 255, 255),
              Color.fromARGB(192, 255, 255, 255),
              Color.fromARGB(143, 0, 0, 0),
            ]
          ),
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              //Login screen objects
              child: Column(
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset("assets/logop.png"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //Box E-mail
                  TextFormField(
                    validator: (String? value){
                      if(value == null) {
                        return 'E-mail Obrigatório!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                      labelText: 'Digite o seu e-mail',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                      hintText: 'EX: email@gmail.com',
                      hintStyle: TextStyle(
                        fontSize: 17,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.email),
                        ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //Box password
                  TextFormField(
                    validator: (String? value){
                      if(value == null) {
                        return 'Senha Obrigatória!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                      labelText: 'Digite sua senha',
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.password_rounded),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                       child: const Text(
                      'Recuperar Senha',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                       ),
                      onPressed: (){},
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black45,
                          ),
                          child: AnimatedBuilder(
                            animation: loading,
                            builder: (context, _) {
                              return loading.value
                              ? const SizedBox(
                                width: 21,
                                height: 20,
                                child: CircularProgressIndicator(),
                              )
                              : const Text('Entrar');
                            }
                          ),
                          onPressed: () => loading.value = !loading.value,
                        ),
                      ),
                      ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  //log in with facebook
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color.fromARGB(226, 36, 50, 245),
                          Color.fromARGB(255, 43, 125, 249),
                        ]
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}