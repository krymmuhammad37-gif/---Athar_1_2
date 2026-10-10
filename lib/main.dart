import 'package:flutter/material.dart';

void main() {
  runApp(const AtharApp());
}

class AtharApp extends StatelessWidget {
  const AtharApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أَثَر | Athar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D1117),
        primaryColor: const Color(0xFF1F6FEB),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تطبيق أَثَر | Athar 🌙'),
        centerTitle: true,
        backgroundColor: const Color(0xFF161B22),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // 1. إذاعة أثر المباشرة
            _buildFeatureCard(
              context,
              title: 'إذاعة أَثَر المباشرة 📻',
              subtitle: '🔴 البث المغلق الآن - استمع للقرآن والتلاوات',
              color: Colors.red.shade700,
            ),
            const SizedBox(height: 12),

            // 2. المصحف الشريف
            _buildFeatureCard(
              context,
              title: 'المصحف الشريف 📖',
              subtitle: 'قراءة القرآن بالرسم العثماني كاملاً',
              color: const Color(0xFF1F6FEB),
            ),
            const SizedBox(height: 12),

            // 3. المكتبة الصوتية للقراء
            _buildFeatureCard(
              context,
              title: 'المكتبة الصوتية الشاملة 🎧',
              subtitle: 'أكثر من 50 قارئاً مع المصحف المرتل',
              color: const Color(0xFF238636),
            ),
            const SizedBox(height: 12),

            // 4. السبحة الرقمية الذكية
            _buildFeatureCard(
              context,
              title: 'السبحة الرقمية الذكية 📿',
              subtitle: 'عداد أذكار يحفظ التسبيحات تلقائياً',
              color: const Color(0xFF9E6A03),
            ),
            const SizedBox(height: 12),

            // 5. الأذكار والأدعية
            _buildFeatureCard(
              context,
              title: 'الأذكار والأدعية 🤲',
              subtitle: 'أذكار الصباح والمساء والاستيقاظ والنوم',
              color: const Color(0xFF8957E5),
            ),
            const SizedBox(height: 12),

            // 6. مواقيت الصلاة والقبلة
            _buildFeatureCard(
              context,
              title: 'مواقيت الصلاة والقبلة 🕌',
              subtitle: 'تحديد أوقات الصلاة واتجاه القبلة بدقة',
              color: const Color(0xFFDA3633),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(BuildContext context, {required String title, required String subtitle, required Color color}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF161B22),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF30363D)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: color,
          radius: 10,
        ),
        onTap: () {
          // سيتم إضافة تفاصيل الشاشات هنا لاحقاً
        },
      ),
    );
  }
}

                       