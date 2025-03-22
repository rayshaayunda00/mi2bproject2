import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataDosen extends StatefulWidget {
  const DataDosen({super.key});

  @override
  State<DataDosen> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<DataDosen> {
  TextEditingController nidp= TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController tgllahir = TextEditingController();
  String? valAgama, valJK, inputForm;
  TextEditingController alamat = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
    if (pickDate != null) {
      tgllahir.text = DateFormat("dd/MM/yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Form Dosen", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "NIDP",
                  controller: nidp,
                  hintText: "1234",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "Nama",
                  controller: nama,
                  hintText: "Fani",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                CostumeInput(
                  labelInput: "Tanggal Lahir",
                  controller: tgllahir,
                  hintText: "dd/mm/YY",
                  textInputType: TextInputType.datetime,
                  onTap: () {
                    selectDate();
                  },
                ),
                SizedBox(height: 15),
                SizedBox(height: 15),
                Text("Pendidikan", style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton(
                    value: valAgama,
                    underline: Container(),
                    isExpanded: true,
                    items:
                    [
                      "S1",
                      "S2",
                      "S3",
                    ].map((e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(e),
                        ),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        valAgama = val;
                      });
                    },
                  ),
                ),
                SizedBox(height: 15),
                Text("Status", style: TextStyle(fontSize: 18)),
                SizedBox(height: 5),
                Row(
                  children: [
                    CostumeRadio(
                      value: "Menikah",
                      groupValue: valJK.toString(),
                      onChange: (val) {
                        setState(() {
                          valJK = val;
                        });
                      },
                    ),
                    CostumeRadio(
                      value: "Single",
                      groupValue: valJK.toString(),
                      onChange: (val) {
                        setState(() {
                          valJK = val;
                        });
                      },
                    ),
                  ],
                ),
                CostumeInput(
                  labelInput: "Alamat",
                  controller: alamat,
                  hintText: "gg",
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                SizedBox(height: 15),
                CostumeButton(
                  bgcolor: Colors.brown,
                  labelButton: "SAVE",
                  onPressed: () {
                    setState(() {
                      //cek validasi input
                      if (_formKey.currentState!.validate()) {
                        //cek input agama dn jns klmn
                        if (valAgama != null && valJK != null) {
                          //ambil input//
                          inputForm =
                          "Fullname : ${nidp.text}\n"
                              "Username : ${nama.text}\n"
                              "Tanggal Lahir : ${tgllahir.text}\n"
                              "Agama : ${valAgama.toString()}\n"
                              "Jenis Kelamin : ${valJK.toString()}";
                          "Email : ${alamat.text}\n";
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(inputForm.toString())),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Silahkan Pilih Pendidikan dan Status",
                              ),
                            ),
                          );
                        }
                      }
                    });
                  },
                  labelColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CostumeInput extends StatelessWidget {
  final String labelInput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final VoidCallback? onTap;

  const CostumeInput({
    super.key,
    required this.labelInput,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelInput, style: TextStyle(fontSize: 18)),
        SizedBox(height: 5),
        TextFormField(
          controller: controller,
          //mendapatkan input dari user//
          validator: (val) {
            return val!.isEmpty ? "Input tidak boleh kosong" : null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: textInputType,
          obscureText: obscureText,
          onTap: () {
            //event ketika klik input//
            onTap?.call();
          },
        ),
      ],
    );
  }
}

class CostumeRadio extends StatelessWidget {
  final String value;
  final String groupValue;
  final ValueChanged<String> onChange;

  const CostumeRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: (val) {
          if (val != null) {
            onChange(val); //pass the selected value
          }
        },
        title: Text(value),
      ),
    );
  }
}

class CostumeButton extends StatelessWidget {
  final Color bgcolor;
  final String labelButton;
  final VoidCallback onPressed;
  final Color labelColor;

  const CostumeButton({
    super.key,
    required this.bgcolor,
    required this.labelButton,
    required this.onPressed,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        backgroundColor: bgcolor,
      ),
      onPressed: () {
        onPressed.call();
      },
      child: Text(labelButton, style: TextStyle(color: labelColor)),
    );
  }
}