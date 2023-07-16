import 'package:flutter/material.dart';


class PetType {
  final String name;
  final List<String> breeds;
  final String info;
  final Color color;
  final List<QuestionAnswer> faqs;

  PetType({
    required this.name,
    required this.breeds,
    required this.info,
    required this.color,
    required this.faqs,
  });
}

class QuestionAnswer {
  final String question;
  final String answer;

  QuestionAnswer({required this.question, required this.answer});
}

class PetInfo {
  static List<PetType> getPetTypes() {
    return [
      PetType(
        name: 'Köpekler',
        breeds: ['Golden Retriever'],
        info: 'Köpekler insanlarla çok dostane ve uyumlu olurlar. Ancak yabancılarla tanışırken biraz çekingen olabilirler. '
            'Onlarla zaman geçirirken sevginizi ve sabrınızı göstermelisiniz.',
        color: Colors.green[300]!,
        faqs: [
          QuestionAnswer(
            question: 'Golden Retriever\'ımın günlük egzersiz ihtiyacı ne kadardır?',
            answer: 'Golden Retriever\'lar enerjik köpeklerdir ve günlük egzersize ihtiyaç duyarlar. '
                'Yaklaşık olarak 1-2 saatlik aktif egzersiz önerilir. Bu yürüyüş, koşu, oyun veya yüzme gibi aktiviteleri içerebilir. '
                'Ancak her köpeğin enerji seviyesi farklı olabilir, bu yüzden bireysel ihtiyaçları göz önünde bulundurulmalıdır.',
          ),
          QuestionAnswer(
            question: 'Golden Retriever\'lar ne tür egzersizlere ihtiyaç duyar?',
            answer: 'Golden Retriever\'lar enerjik köpeklerdir ve günlük olarak aktif olmaları gerekmektedir. '
                'Yürüyüş, koşu, oyun, yüzme ve tasma ile egzersiz gibi aktiviteler, enerjilerini atmak için idealdir. '
                'Özellikle yüzme, Golden Retriever\'lar için doğal bir yetenekleri olduğu için tercih edilen bir egzersizdir. '
                'Egzersiz ihtiyaçları köpeğin yaşına, sağlık durumuna ve enerji seviyesine bağlı olarak değişebilir, '
                'bu yüzden bireysel ihtiyaçları göz önünde bulundurarak uygun bir egzersiz programı oluşturun.',
          ),
          QuestionAnswer(
            question: 'Golden Retriever\'ımın beslenme ihtiyaçları nelerdir?',
            answer: 'Golden Retriever\'lar aktif bir ırk olduğu için dengeli bir beslenme planına ihtiyaç duyarlar. '
                'Yüksek kaliteli, dengeli bir köpek maması tercih edilmelidir. Genel olarak, yetişkin bir Golden Retriever '
                'günde iki öğün yemek almalıdır. Köpeğinizin yaşına, büyüklüğüne, aktivite seviyesine ve sağlık durumuna '
                'bağlı olarak doğru beslenme miktarını belirlemek için veterinerinizle görüşmeniz önemlidir.',
          ),
          // Buraya yeni soruları ekleyebilirsiniz:
          QuestionAnswer(
            question: 'Golden Retriever\'lar aşırı tüy döker mi?',
            answer: 'Evet, Golden Retriever\'lar orta düzeyde tüy döken bir ırktır. '
                'İlkbahar ve sonbahar dönemlerinde tüy dökümü daha yoğun olabilir. '
                'Haftalık tarama ve düzenli fırçalama, dökülen tüyleri kontrol altında tutmaya ve evinize yayılmasını azaltmaya yardımcı olur. '
                'Ayrıca, sağlıklı bir tüy yapısını korumak için beslenmeye ve genel tüy bakımına dikkat etmek önemlidir.',
          ),
          QuestionAnswer(
            question: 'Golden Retriever\'ımın tüy bakımı nasıl olmalıdır?',
            answer: 'Golden Retriever\'lar kalın, çift tabaklı bir tüy yapısına sahiptirler ve orta düzeyde tüy dökerler. '
                'Haftalık tarama, tüylerini temiz ve düğümsüz tutmak için önemlidir. '
                'Döküm dönemlerinde, günlük tarama daha sık yapılabilir. '
                'Ayrıca düzenli olarak banyo yaptırılmalı ve kulaklar, gözler ve tırnaklar da düzenli olarak kontrol edilmelidir.',
          ),
          // Yeni eklenen sorular:
          QuestionAnswer(
            question: 'Golden Retriever\'lar çabuk eğitilebilir mi?',
            answer: 'Evet, Golden Retriever\'lar genellikle çabuk öğrenen ve itaatkar bir ırktır. '
                'Zekaları ve işbirlikçi doğaları sayesinde eğitim süreci genellikle kolay olur. '
                'Ancak sabır, tutarlılık ve pozitif yöntemlerle eğitim vermek önemlidir.',
          ),
          QuestionAnswer(
            question: 'Golden Retriever\'lar çocuklarla iyi anlaşır mı?',
            answer: 'Evet, Golden Retriever\'lar genellikle çocuklarla iyi anlaşır. '
                'Onlar sevecen, sabırlı ve oyuncu bir doğaya sahiptirler ve çocuklarla iyi bir bağ kurabilirler. '
                'Ancak her zaman köpekleri ve çocukları bir araya getirirken gözetim altında olmak önemlidir.',
          ),
        ],
      ),
      PetType(
        name: 'Kediler',
        breeds: ['Calico Kedisi'],
        info: 'Kediler bağımsız ve oyun sever doğalarıyla bilinirler. '
            'Genellikle sakin bir yaşam tarzı benimserler ve evde birçok yere saklanabilirler. '
            'Kedilere beslemek ve sevmek için zaman ayırmak önemlidir.',
        color: Colors.blue[300]!,
        faqs: [
          QuestionAnswer(
            question: 'Calico nasıl bir kedi türüdür?',
            answer: 'Sokaklarda en çok rastlanan Tekir kedilerden sonra Calico (Patiska) kediler gelir. '
                'Beyaz üstüne tıpkı çamaşır suyu dökülmüş gibi sarı ve siyah yamaları olan kediler Patiska kediler olarak adlandırılır. '
                'Üç renkli olan her kedi Patiska olarak adlandırılsa da aslında üç renge sahip her kediye de Patiska demek doğru olmaz. '
                'Bir kedinin Patiska olarak adlandırılabilmesi için beyaz üstüne sarı ve siyah benekli olması gerekir. '
                'Kendine has görünümlerinin yanı sıra ilginç kişilik özelliklerine de sahip olan Patiska kediler dünyanın en popüler kedileri arasında yerini alır. '
                'Patiska kediler genellikle oyuncu, sevecen ve güçlü iradeye sahip olan kedi türlerindendir. '
                'Bulundukları ortama kolaylıkla adapte olan Patiska kediler, oldukça ilginç karaktere sahip olabilirler.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi cins midir?',
            answer: 'Calico (Patiska) kedilerin renkleri beyaz ton üzerine sarı ve siyah renklerin görünmesi ile bilinmektedir. '
                'Calico kedilerde görülen desenlere Patiska adı verilir. Ve Patiska desen birçok farklı kedi ırklarında görülmektedir. '
                'Bundan dolayı da Calico (Patiska) kediler cins bir kedi veya kedi ırkı değildir. '
                'Patiska desenlerine verilen bir addır.',
          ),
          QuestionAnswer(
            question: 'Calico kediler Tekir midir?',
            answer: 'Calico (Patiska) kediler tekir kedi olarak adlandırılmaz. '
                'Genetik yapılarından dolayı 3 farklı renk desenine sahip olarak doğarlar. '
                'Bu renk desenleri de farklı ırklardan olan kediler görülmektedir.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi çok tüy döker mi?',
            answer: 'Patiska kediler görüntü itibariyle tüy dökme eğilimleri fazla olan kediler olarak sınıflandırılabilir. '
                'Ancak düzenli bakımlarının yapılması, tüylerinin düzenli olarak taranması ve temizlenmesi halinde tüy dökme eğilimleri azalabilir. '
                'Farklı renk pigmenti ve yumuşacık dokusuyla evde beslemek için harika bir tür olan Patiska kediler cana yakın ve sevecen kişilikleriyle kedi severler için harika bir dost olur.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi ne yer?',
            answer: 'Kediler genellikle yüksek protein ve düşük karbonhidratlı diyete ihtiyaç duyarlar. '
                'Özelikle de obeziteye yatkın olan kedileri karbonhidrat ve tahıllı besinlerden uzak tutmak gerekir. '
                'Beslediğiniz Patiska kedinin ait olduğu ırkın özelliklerine ve ihtiyaçlarına göre veteriner kontrolünde düzenli bir beslenme programı oluşturulmalıdır. '
                'Böylece hem kedinizin yaşam kalitesi artar hem de yaşam süresi uzamış olur. '
                'Kaliteli kuru mamalar, yaş mamalar ve evde yapılan protein ağırlıklı yemekler kedinizin beslenmesinde kullanılabilir.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi mama dışında ne yer?',
            answer: 'Tüm kedi türlerinde olduğu gibi Patiska kediler de kaliteli mamalarla beslenmelidir. '
                'Kaliteli mamalar beslenmesi olası sağlık problemlerinin önlenmesi açısından önemlidir. '
                'Genel anlamda Patiska kediler beslenme açısından çok problem çıkarmasa da protein ağırlıklı besinler beslenmesinde önemlidir. '
                'Kuru veya yaş mama dışında Patiska kedinize evde protein ağırlıklı yemekler yapabilirsiniz. '
                'Ancak yemek yaparken nişastalı ve tahıllı ürünlerden uzak durmaya özen göstermelisiniz.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi nasıl eğitilir?',
            answer: 'Patiska kediler genellikle uysal ve dost canlısı kedilerdir. '
                'Bulundukları ortama kolay uyum sağlayan kediler olduğu gibi, dediğim dedik kediler de çok fazladır. '
                'Bu kedileri eğitebilmek için yavruluğundan itibaren düzenli bir program uygulanmalıdır. '
                'Onlarla oyunlar oynayarak, kedi oyuncaklarıyla oynamasını sağlayarak ve düzenli komutlar vererek kısa sürede istediğiniz düzeye getirebilir, iyi birer dost olmalarını sağlayabilirsiniz.',
          ),
          QuestionAnswer(
            question: 'Calico kedisinin sık karşılaştığı hastalıklar nelerdir?',
            answer: 'Patiska kediler genetik bir hastalık sonucu bu kürk rengine sahip olurlar ve beraberinde birçok genetik bozukluğu üzerlerinde taşırlar. '
                'Bu genetik bozukluğun sonucunda Patiska kedilerin neredeyse tamamı dişi ve kısırdır. '
                'Kısır olmalarının yanı sıra Patiska kedilerde genital bölgede deformasyon, beyin hasarı ve organ yetmezliği gibi birçok sağlık sorunları gözlenebilir. '
                'Patiska kedilerde bu sağlık sorunlarının gözlenmesindeki en büyük neden Klinefelter sendromudur. '
                'Patiska kediler genellikle uzun yaşamazlar, yaşasalar bile çok iyi bir bakıma ihtiyaç duyarlar.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi bakımı zor mudur?',
            answer: 'Patiska kediler yumuşak ve sık tüylü kedilerdir. '
                'Çok fazla bakıma ihtiyaç duymayan Patiska kedilerin tüylerinin yumuşaklığını koruyabilmesi için kısa tüylüleri haftada 2 kez, uzun tüylüleri ise haftada 3 kez özel kedi tarağıyla ya da yumuşak bir fırçayla taramak yeterli olacaktır. '
                'Tarama sırasında dökülen ölü tüyleri alarak kedinizin tüylerinin etrafa saçılmasını önlemiş olursunuz. '
                'Eğer ihtiyaç duyarsa daha sık aralıklarla da tarayabilirsiniz. '
                'Taramaya ek olarak kediler için özel üretilmiş diş fırçaları ve diş macunuyla ağız bakımlarını yapmalısınız. '
                'Göz ve kulak çevresini enfeksiyonlardan korumak için nemli bir bezle temizlemelisiniz. '
                'Aynı şekilde mikropları uzak tutmak için mama kabını, su kabını, tuvalet kabını ve oyuncaklarını da düzenli olarak temizlemelisiniz.',
          ),
          QuestionAnswer(
            question: 'Calico kedisi kaç yıl yaşar?',
            answer: 'Tüm kedi ırklarının belli bir yaşam süreleri vardır. '
                'Bu yaşam süresi beslenme durumuna, kalıtsal hastalıklara, yaşanılan ortama ve daha birçok faktöre göre uzayıp kısalabilir. '
                '50’ye yakın kedi ırkında Patiska tüy rengi görüldüğünü düşünürsek, '
                'Patiska tüy rengini temsil eden kedilerin yaşam süresinin de oldukça geniş bir aralığa sahip olduğunu görebiliriz. '
                'Kimi Patiska kediler 8-12 yıl arası bir yaşam süresine sahipken, kimisi de 20 yıldan fazla yaşayabilir.',
          ),
        ],
      ),
      PetType(
        name: 'Kuşlar',
        breeds: ['Muhabbet Kuşu'],
        info: 'Kuşlar enerjik ve neşeli hayvanlardır. '
            'Onlarla konuşabilir ve bazılarıyla oyunlar oynayabilirsiniz. '
            'Kuşlar düzenli olarak temiz bir yaşam alanı ve dengeli bir beslenme isterler.',
        color: Colors.orange[300]!,
        faqs: [
          QuestionAnswer(
            question: 'Muhabbet kuşu nasıl konuşturulur?',
            answer: 'Muhabbet kuşu, doğası gereği zeki ve konuşkan canlılardır. Eğitildiklerinde konuşmayı öğrenerek, en popüler hayvanlar arasında yer almaktadır. Muhabbet kuşunu konuşturabilmek için öncelikle doğru bir eğitim yöntemi seçilmelidir.\n\n'
                'İlk olarak yapmanız gereken, muhabbet kuşuna güven kazandırmak ve onunla iletişim kurmaktır. Daha sonra, düzenli olarak şarkı söyleyin ve onunla konuşun. Muhabbet kuşunuzun insan sesinin tonlarına aşina olmasına yardımcı olur.\n\n'
                'Muhabbet kuşunun tekrar etmesini istediğiniz kelimeleri net ve yavaş bir şekilde telaffuz edin. Kayıt cihazı kullanarak muhabbet kuşunuza tekrarlatarak, doğru telaffuz etmesini sağlayabilirsiniz.\n\n'
                'Eğitim sürecinde tutarlılık ve sabır çok önemlidir. Her muhabbet kuşunun öğrenme hızı farklıdır, bu yüzden sürecin uzun sürebileceğini unutmayın. Tekrarlar, ödüller ve olumlu pekiştirmelerle muhabbet kuşunuzu teşvik edin.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu neden tüy döker?',
            answer: 'Muhabbet kuşu, tüylerini yenileyebilmek için düzenli olarak tüy döker. Tüy dökme süreci, muhabbet kuşunun sağlıklı tüylerinin büyümesini ve eski tüylerin yerini almasını sağlar. Muhabbet kuşunun tüy dökme dönemleri genellikle mevsimsel olarak ortaya çıkar. Bu dönemlerde, muhabbet kuşunun aktiviteleri ve beslenme alışkanlıkları değişebilir.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu hastalıkları nelerdir?',
            answer: 'Muhabbet kuşları, bazı hastalıklara yakalanabilirler. En yaygın hastalıklardan bazıları solunum yolu enfeksiyonları, kabızlık, ishal, tüy dökme, tüy kanatma ve tüy yeme gibi durumlardır. Muhabbet kuşunuzun sağlığına dikkat etmek ve düzenli veteriner kontrollerine götürmek önemlidir.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu ömrü ne kadardır?',
            answer: 'Muhabbet kuşları, uygun bakım ve beslenme sağlandığında genellikle 5 ila 10 yıl arasında yaşarlar. Ancak bazı muhabbet kuşları 15 yıl veya daha uzun süre yaşayabilir. Muhabbet kuşunuzun sağlıklı bir yaşam sürmesi için taze su, dengeli beslenme, temiz bir yaşam alanı ve düzenli veteriner kontrolleri önemlidir.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu neden kusar?',
            answer: 'Muhabbet kuşları, yedikleri gıdaları çiğnemeden yutarlar ve sindirmek için mide asidi salgılarlar. Bazen fazla yemek yediklerinde veya yanlış bir şey tükettiklerinde mide asidi fazla salgılanabilir. Bu durumda, muhabbet kuşu kusarak sindirim sistemini rahatlatır.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu tırnak kesimi nasıl yapılır?',
            answer: 'Muhabbet kuşunuzun tırnak kesimi, onları bakımlı ve temiz tutmak için önemlidir. Uzayan tırnaklar yürüme ve tünekte tutunma yeteneklerini olumsuz etkileyebilir. Tırnak kesimi yaparken dikkatli olmanız ve muhabbet kuşunuzu rahatsız etmemeniz önemlidir. Özel bir tırnak makası kullanarak tırnaklarını dikkatlice kesmelisiniz. Haftada bir kez veya ihtiyaç duyulduğunda tırnak kesimini yapmanız önerilir.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu nasıl yıkanır?',
            answer: 'Muhabbet kuşunuzun temiz ve sağlıklı kalması için düzenli olarak yıkanması gerekmektedir. Banyo yaparken dikkat etmeniz gereken bazı noktalar vardır. Muhabbet kuşunu yıkamak için uygun bir kuş banyosu veya su kabı kullanabilirsiniz. Su sıcaklığını muhabbet kuşunun hoşuna gidecek bir şekilde ayarlamalısınız. Kuşunuza zarar vermemek için suyun sıcaklığını kontrol etmek önemlidir. Su kabına birkaç damla kuş şampuanı ekleyerek tüylerinin temizlenmesine yardımcı olabilirsiniz. Banyodan sonra muhabbet kuşunu bir havlu yardımıyla nazikçe kurulayabilirsiniz. Banyo yapma sıklığı kuşunuza ve tercihlerinize bağlı olarak değişebilir.',
          ),
          QuestionAnswer(
            question: 'Muhabbet kuşu kaç yıl yaşar?',
            answer: 'Muhabbet kuşlarının yaşam süreleri genellikle 5 ila 10 yıl arasında değişir. Ancak, bazı muhabbet kuşları 15 yıl veya daha uzun süre yaşayabilir. Muhabbet kuşunuzun sağlıklı bir yaşam sürdürebilmesi için uygun beslenme, temiz bir yaşam alanı ve düzenli veteriner kontrolü sağlamanız önemlidir.',
          ),
        ],
      ),
    ];
  }
}

class PetDetailScreen extends StatelessWidget {
  final String petType;
  final String breed;
  final String info;
  final Color color;
  final List<QuestionAnswer> faqs;

  PetDetailScreen({
    required this.petType,
    required this.breed,
    required this.info,
    required this.color,
    required this.faqs,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(breed),
        backgroundColor: Colors.white, // Uygulama çubuğunun arka plan rengini beyaz olarak ayarlayın
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text(
              breed,
              style: TextStyle(fontSize: 16, color: color),
            ),
            SizedBox(height: 16),
            Text(
              'Genel Bilgi:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              info,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),
            Text(
              'Sıkça Sorulan Sorular:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: faqs.length,
              itemBuilder: (context, index) {
                final faq = faqs[index];

                return ExpansionTile(
                  title: Text(
                    faq.question,
                    style: TextStyle(color: Colors.black), // Soru rengini siyah olarak ayarlayın
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        faq.answer,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final petTypes = PetInfo.getPetTypes();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petmate',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Yeni Evcil Hayvan Sahipleri İçin Bilgiler',
            style: TextStyle(color: Colors.black), // Uygulama çubuğu başlık rengini mavi olarak ayarlayın
          ),
          backgroundColor: Colors.white, // Uygulama çubuğu arka plan rengini beyaz olarak ayarlayın
        ),
        body: ListView.builder(
          itemCount: petTypes.length,
          itemBuilder: (context, index) {
            final petType = petTypes[index];

            return ExpansionTile(
              title: Text(
                petType.name,
                style: TextStyle(color: Colors.black), // Başlık rengini siyah olarak ayarlayın
              ),
              backgroundColor: petType.color,
              children: petType.breeds.map((breed) {
                return ListTile(
                  title: Text(
                    breed,
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PetDetailScreen(
                          petType: petType.name,
                          breed: breed,
                          info: petType.info,
                          color: petType.color,
                          faqs: petType.faqs,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}