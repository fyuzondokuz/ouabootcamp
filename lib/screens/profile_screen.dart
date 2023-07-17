import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = 'John Doe';
  String userImage = 'assets/images/profile_picture.jpg';
  List<Pet> pets = [];

  void _editProfile() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfileScreen()),
    );

    if (result != null) {
      setState(() {
        userName = result['userName'];
        pets = result['pets'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Profil',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(userImage),
          ),
          SizedBox(height: 10),
          Text(
            userName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: pets.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(pets[index].image),
                  ),
                  title: Text(
                    pets[index].name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Tür: ${pets[index].type}, Cinsiyet: ${pets[index].gender}, Yaş: ${pets[index].age}',
                    style: TextStyle(fontSize: 16),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _editProfile();
            },
            child: Text('Profili Düzenle'),
          ),
        ],
      ),
    );
  }
}

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController userNameController;
  List<Pet> pets = [];

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    final result = {
      'userName': userNameController.text,
      'pets': pets,
    };

    Navigator.pop(context, result);
  }

  void _addPet() {
    setState(() {
      pets.add(Pet());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Düzenle'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: userNameController,
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Evcil Hayvanlar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: pets.length,
              itemBuilder: (context, index) {
                return PetFormField(
                  pet: pets[index],
                  onChanged: (updatedPet) {
                    setState(() {
                      pets[index] = updatedPet;
                    });
                  },
                );
              },
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: _addPet,
              child: Text('Evcil Hayvan Ekle'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveChanges,
              child: Text('Değişiklikleri Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}

class Pet {
  String name;
  String type;
  String gender;
  int age;
  String image;

  Pet({this.name = '', this.type = '', this.gender = '', this.age = 0, this.image = ''});
}

class PetFormField extends StatelessWidget {
  final Pet pet;
  final ValueChanged<Pet> onChanged;

  PetFormField({required this.pet, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) => pet.name = value,
          decoration: InputDecoration(
            labelText: 'Evcil Hayvan Adı',
          ),
        ),
        TextField(
          onChanged: (value) => pet.type = value,
          decoration: InputDecoration(
            labelText: 'Evcil Hayvan Türü',
          ),
        ),
        TextField(
          onChanged: (value) => pet.gender = value,
          decoration: InputDecoration(
            labelText: 'Evcil Hayvan Cinsiyeti',
          ),
        ),
        TextField(
          onChanged: (value) => pet.age = int.tryParse(value) ?? 0,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Evcil Hayvan Yaşı',
          ),
        ),
        TextField(
          onChanged: (value) => pet.image = value,
          decoration: InputDecoration(
            labelText: 'Evcil Hayvan Resim URL\'si',
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
