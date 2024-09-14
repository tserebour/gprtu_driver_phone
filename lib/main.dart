import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'myapp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://ltbwxoeqmoefknobqwro.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx0Ynd4b2VxbW9lZmtub2Jxd3JvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTkzNzk1OTksImV4cCI6MjAzNDk1NTU5OX0.S5pb3CTQftKrhX75xhQdQBOoKJxJpPdYEbkSzNtbY1s",

  );
  runApp(const MyApp());
}


