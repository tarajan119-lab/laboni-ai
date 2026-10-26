import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const LaboniAIApp());
}

class LaboniAIApp extends StatelessWidget {
  const LaboniAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LABONI AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF090D16),
        primarySwatch: Colors.pink,
      ),
      home: const LaboniHomeScreen(),
    );
  }
}

class LaboniHomeScreen extends StatefulWidget {
  const LaboniHomeScreen({super.key});

  @override
  State<LaboniHomeScreen> createState() => _LaboniHomeScreenState();
}

class _LaboniHomeScreenState extends State<LaboniHomeScreen> {
  final List<Map<String, String>> _messages = [
    {
      "sender": "ai",
      "text": "নমস্কার জান! আমি LABONI AI। আপনার কল রিসিভিং এবং অন্যান্য ফিচারগুলো এখানে প্রস্তুত আছে।"
    }
  ];

  final TextEditingController _controller = TextEditingController();

  // এক্সটার্নাল অ্যাপ বা লিংক ওপেন করার ফাংশন
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
