/// Data akun untuk login.

class AppUser {
  static const String username = 'mrsha';
  static const String password = '124210069';

  static bool isValid(String username, String password) {
    return username.trim() == username &&
        password.trim().toLowerCase() == password.toLowerCase();
  }

  
  }
}

