import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Edit Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.edit,
                color: const Color.fromARGB(255, 8, 130, 79),
              ),
              onTap: () {
                // Navigate to the profile edit screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Manage Notifications",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.notifications,
                color: const Color.fromARGB(255, 8, 130, 79),
              ),
              onTap: () {
                // Navigate to notification settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageNotificationScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Privacy Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.lock,
                color: const Color.fromARGB(255, 8, 130, 79),
              ),
              onTap: () {
                // Navigate to privacy settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: const Color.fromARGB(255, 8, 130, 79),
              ),
              onTap: () {
                // Handle logout functionality here
                _showLogoutDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Are you sure you want to logout?",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Perform logout logic here
                Navigator.of(context).pop();
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  color: const Color.fromRGBO(27, 94, 32, 1)
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Logout",
                style: TextStyle(
                  color: const Color.fromRGBO(27, 94, 32, 1)
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}



class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _image;
  final _nameController = TextEditingController();
  final _bioController = TextEditingController();

  // Function to pick an image from gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // Function to save profile data (mockup)
  void _saveProfile() {
    final name = _nameController.text;
    final bio = _bioController.text;

    // Implement your save functionality here (e.g., update profile in backend)
    print("Profile Updated: $name, $bio");

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Profile updated successfully!"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Profile Picture Section
            Center(
              child: GestureDetector(
                onTap: () {
                  // Show bottom sheet to choose between gallery or camera
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.camera_alt),
                            title: Text("Take a photo"),
                            onTap: () {
                              _pickImage(ImageSource.camera);
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.photo_library),
                            title: Text("Choose from gallery"),
                            onTap: () {
                              _pickImage(ImageSource.gallery);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: _image != null
                      ? FileImage(_image!)
                      : AssetImage('assets/default_profile.png') as ImageProvider,
                  child: _image == null
                      ? Icon(Icons.camera_alt, size: 30, color: Colors.white)
                      : null,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Name TextField
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Bio TextField
            TextField(
              controller: _bioController,
              decoration: InputDecoration(
                labelText: 'Bio',
                hintText: 'Tell us about yourself',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 20),

            // Save Button
            ElevatedButton(
              onPressed: _saveProfile,
              child: Text("Save Profile"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ManageNotificationScreen extends StatefulWidget {
  @override
  _ManageNotificationScreenState createState() =>
      _ManageNotificationScreenState();
}

class _ManageNotificationScreenState extends State<ManageNotificationScreen> {
  bool _isNotificationsEnabled = false; // Notifications toggle state
  bool _newRecipeNotification = false; // New recipe notification
  bool _newFollowerNotification = false; // New follower notification
  bool _commentNotification = false; // Comment on post notification

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Notifications"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Master toggle for notifications
            SwitchListTile(
              title: Text("Enable Notifications"),
              subtitle: Text("Turn notifications on or off"),
              value: _isNotificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isNotificationsEnabled = value;
                });
              },
              activeColor:  Color.fromARGB(255, 8, 130, 79),
            ),
            if (_isNotificationsEnabled) Divider(),

            // New recipe notifications
            if (_isNotificationsEnabled)
              SwitchListTile(
                title: Text("New Recipe Notifications"),
                subtitle: Text("Get notified when a new recipe is posted"),
                value: _newRecipeNotification,
                onChanged: (bool value) {
                  setState(() {
                    _newRecipeNotification = value;
                  });
                },
                activeColor:  Color.fromARGB(255, 8, 130, 79),
              ),
            if (_isNotificationsEnabled) Divider(),

            // New follower notifications
            if (_isNotificationsEnabled)
              SwitchListTile(
                title: Text("New Follower Notifications"),
                subtitle: Text("Get notified when someone follows you"),
                value: _newFollowerNotification,
                onChanged: (bool value) {
                  setState(() {
                    _newFollowerNotification = value;
                  });
                },
                activeColor:  Color.fromARGB(255, 8, 130, 79),
              ),
            if (_isNotificationsEnabled) Divider(),

            // Comment notifications
            if (_isNotificationsEnabled)
              SwitchListTile(
                title: Text("Comment Notifications"),
                subtitle: Text("Get notified when someone comments on your post"),
                value: _commentNotification,
                onChanged: (bool value) {
                  setState(() {
                    _commentNotification = value;
                  });
                },
                activeColor:  Color.fromARGB(255, 8, 130, 79),
              ),
            if (_isNotificationsEnabled) Divider(),
          ],
        ),
      ),
    );
  }
}



class PrivacyScreen extends StatefulWidget {
  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _isAccountPrivate = false; // Account privacy (public/private)
  bool _isPostPrivate = false; // Post visibility (private/public)
  bool _hideActivityStatus = false; // Hide activity status (last seen)
  List<String> blockedUsers = []; // List of blocked users

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Settings"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Account Privacy toggle (Public/Private)
            SwitchListTile(
              title: Text("Make Account Private"),
              subtitle: Text("Set your account to private to restrict access."),
              value: _isAccountPrivate,
              onChanged: (bool value) {
                setState(() {
                  _isAccountPrivate = value;
                });
              },
              activeColor:  Color.fromARGB(255, 8, 130, 79),
            ),
            Divider(),

            // Post Visibility (Public/Private)
            SwitchListTile(
              title: Text("Make Posts Private"),
              subtitle: Text("Set your posts to be visible only to you."),
              value: _isPostPrivate,
              onChanged: (bool value) {
                setState(() {
                  _isPostPrivate = value;
                });
              },
              activeColor:  Color.fromARGB(255, 8, 130, 79),
            ),
            Divider(),

            // Hide Activity Status (Online/Last Seen)
            SwitchListTile(
              title: Text("Hide Activity Status"),
              subtitle: Text("Hide your online status and last seen time."),
              value: _hideActivityStatus,
              onChanged: (bool value) {
                setState(() {
                  _hideActivityStatus = value;
                });
              },
              activeColor:  Color.fromARGB(255, 8, 130, 79),
            ),
            Divider(),

            // Blocked Users Management
            ListTile(
              title: Text("Manage Blocked Users"),
              subtitle: Text("View or unblock users you have blocked."),
              onTap: () {
                // Navigate to blocked users management screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlockedUsersScreen(blockedUsers: blockedUsers),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class BlockedUsersScreen extends StatefulWidget {
  final List<String> blockedUsers;
  BlockedUsersScreen({required this.blockedUsers});

  @override
  _BlockedUsersScreenState createState() => _BlockedUsersScreenState();
}

class _BlockedUsersScreenState extends State<BlockedUsersScreen> {
  late List<String> _blockedUsers;

  @override
  void initState() {
    super.initState();
    _blockedUsers = widget.blockedUsers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blocked Users"),
      ),
      body: ListView.builder(
        itemCount: _blockedUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_blockedUsers[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _blockedUsers.removeAt(index); // Unblock the user
                });
              },
            ),
          );
        },
      ),
    );
  }
}

