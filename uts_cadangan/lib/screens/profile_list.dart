import 'package:flutter/material.dart';
import 'package:uts_cadangan/services/api_service.dart';
import 'package:uts_cadangan/models/profile.dart';

class ProfileList extends StatefulWidget {
  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  late Future<List<Profile>> futureProfiles;

  @override
  void initState() {
    super.initState();
    futureProfiles = ApiService().fetchProfiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile List'),
      ),
      body: Center(
        child: FutureBuilder<List<Profile>>(
          future: futureProfiles,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(snapshot.data![index].photo),
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].email),
                    trailing: Text(snapshot.data![index].phone),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
