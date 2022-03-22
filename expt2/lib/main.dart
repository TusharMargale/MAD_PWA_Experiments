import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get mainAxisAlignment => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Mission",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "Academics",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 3,
                  child: Text(
                    "Placement",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 4,
                  child: Text(
                    "HOD",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 5,
                  child: Text(
                    "Staff",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
              ],
              onSelected: (value) => {
                if (value == 0)
                  {
                    vision(context),
                  }
                else if (value == 1)
                  {
                    Mission(context),
                  }
                else if (value == 2)
                  {
                    academics(context),
                  }
                else if (value == 3)
                  {
                    placement(context),
                  }
                else if (value == 4)
                  {
                    HOD(context),
                  }
                else
                  {
                    Staff(context),
                  }
              },
            ),
          ),
          title: Center(
            child: Text("Welcome To IT Department of FAMT",
                style: TextStyle(fontFamily: 'Raleway')),
          ),
          backgroundColor: Color.fromARGB(255, 27, 193, 243),
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://images.shiksha.com/mediadata/images/1547198255phpre9PGZ.jpeg',
                  height: 400,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      child: Text(
                        'Network Lab',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () => LAB1(context),
                      color: Color.fromARGB(255, 235, 62, 91),
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text(
                        'AI-DS',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                      ),
                      onPressed: () => LAB2(context),
                      color: Colors.purple[600],
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text(
                        'DMBI',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      onPressed: () => LAB3(context),
                      color: Color.fromARGB(255, 226, 215, 64),
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text(
                        'Web X.0',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                      ),
                      onPressed: () => LAB4(context),
                      color: Color.fromARGB(255, 65, 206, 60),
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text(
                        'MAD & PWA Lab',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                        ),
                      ),
                      onPressed: () => LAB5(context),
                      color: Color.fromARGB(255, 11, 169, 231),
                      padding: EdgeInsets.all(20.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                RaisedButton(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () => contactUs(context),
                  color: Color.fromARGB(255, 241, 133, 31),
                  padding: EdgeInsets.all(25.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Contact Us',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.purple[600], fontWeight: FontWeight.bold),
          ),
          content: Text(
              'Email ID: hodit@famt.ac.in\n\nAddress: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Welcome To Network Lab',
              style: TextStyle(
                  color: Colors.purple[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
              ),
              Text(
                "\nIncharge: Prof. Atiya Kazi.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "\nThe intention of Network Laboratory is to learn fundamental concepts related to networking.\n It is equipped with well connected server and client structured systems to support the study of the concepts and protocols of networking and for the effective implementation of the routing protocols.\n\nThe Lab is used by all Computer students from Second Year to Final Year BE students. The students are involved in performing assignments, practical hands on sessions, case studies and mini project. Experience of the students is enriched on various aspects like structured cabling, building a small network, voice over IP, Security etc. in this laboratory. \n\nThe importance of computer networking technologies makes the methods and facilities used in the delivery and discovery of knowledge related to them very relevant in the planning of curricular activities at any educational institution. "),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Welcome To AI-DS',
              style: TextStyle(
                  color: Colors.purple[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1637922115phpDFaiyx.jpeg',
                height: 350,
              ),
              Text(
                "\nIncharge: Prof. Swati Pawar.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "\nArtificial Intelligence and Data Science is a new branch of study which deals with scientific methodologies, processes, and techniques drawn from different domains like statistics, cognitive science, and computing and information science to extract knowledge from structured data and unstructured data. This knowledge is applied in making various intelligent decisions in business applications. Artificial Intelligence and data science focuses on collecting, categorizing, strategizing, analyzing and interpretation of data. It is a specialised branch that deals with the development of data driven solutions, data visualization tools and techniques to analyse big data. It also incorporates the concepts of machine learning and deep learning model building for solving various computational and real world problems.\n In this course, you will learn how to design, create and implement AI and DS based software solutions to solve actual business problems. This course helps to explore concepts such as AI, Data analytics, Data visualization, Machine Learning, Deep Learning, semantic web and social network analytics, Block chain Technologies, and Data Security and Privacy.\n ",
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Welcome To DMBI ',
              style: TextStyle(
                  color: Colors.purple[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://images.shiksha.com/mediadata/images/1585826982php0LbPhv.jpeg',
                height: 350,
              ),
              Text(
                "\nIncharge: Prof. Mandar Joshi.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "Course Outcome:\nDemonstrate an understanding of the importance of data mining and the principles of business intelligence.Organize and Prepare the data needed for data mining using pre preprocessing techniques Perform exploratory analysis of the data to be used for mining. Implement the appropriate data mining methods like classification, clustering or Frequent Pattern mining on large data sets. Define and apply metrics to measure the performance of various data mining algorithms. Apply BI to solve practical problems : Analyze the problem domain, use the data collected in enterprise apply the appropriate data mining technique, interpret and visualize the results and provide decision support.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB4(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Welcome To Web X.0',
              style: TextStyle(
                  color: Colors.purple[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/photos/empty-computer-room-with-monitors-and-keyboards-in-a-row-for-pupils-picture-id1136866872?k=20&m=1136866872&s=612x612&w=0&h=I7UrdifEf0zIU4WegQ__o4wOmKqHid_OpDSILwJ2L2w=',
                height: 350,
              ),
              Text(
                "\nIncharge: Prof. Amar Palwankar.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "\nThe Web has become the most significant technology of the 21st century. The nature and structure of the Web, as well as the way we use it, have been continuously changing. The Web evolution is huge that we have started to place the evolution—past, current, and anticipated—into different stages as Web 1.0 (the traditional Web), Web 2.0, Web 3.0, and so on.\n The Web's evolution, which we call Web X.0, or Web X.Y, movement, is aimed at harnessing the potential of the Web in a more interactive and collaborative manner with an emphasis on social interaction. It is also aimed at facilitating collaboration and leveraging the collective intelligence of peers, as well as of collective information available on the Web by judicious use of old and new Web technologies in new ways.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void LAB5(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'Welcome To MAD & PWA Lab',
              style: TextStyle(
                  color: Colors.purple[600],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'data:image/jpeg;base64,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',
                height: 350,
              ),
              Text(
                "\nIncharge: Prof. Ashish Vartak.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "\n 1. Beginning Flutter a Hands-on Guide to App Development, Marco L. Napoli, Wiley, 2020.\n2. Beginning App Development with Flutter: Create Cross-Platform Mobile Apps, By Rap Payne, 2019\n3. Progressive Web Application Development by Example: Develop fast, reliable, and engaging user experiences for the web, Packt Publishing Limited ,2018\n4. Building Progressive Web Apps,O’Reilly 2017\n5. Progressive Web Apps with Angular: Create Responsive, Fast and Reliable PWAs Using Angular, Apress; 1st ed. edition")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Vision  of FAMT',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          content: Column(
            children: [
              Image.network(
                'https://www.echelonsalp.com/wp-content/uploads/2020/11/one-ourvision.jpg',
                height: 350,
              ),
              Text(
                "\n\nVision",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "\nThe academy aspires to nurture students as leaders who are in tune with global trends, equipped with engineering knowledge and practical skills, to excel in creativity and innovation in order to play their part in technological advancement of the nation."),
              Text("")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void Mission(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Mission of FAMT',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          content: Column(
            children: [
              Image.network(
                'https://media.istockphoto.com/photos/businessman-shows-the-word-mission-picture-id823928832?k=20&m=823928832&s=612x612&w=0&h=UptgPG5UeqDVfMHbMtsnXPiyahHZhYKABqChrHVpjNU=',
                height: 350,
              ),
              Text(
                "\n\nMission",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  "\n1) To become foremost seat of advanced technical learning as a center of excellence in the region.\n2) To offer state of the art facilities and quality education at affordable cost.\n3)To inculcate in students the culture of ‘Play Hard and Play Fair’.\n4) To advance sustainable development in the region through opportunities for entrepreneurship and industry-institute interaction.\n5) To create a generation of young professionals who appreciate in all its aspects the necessity of balance between technological advances and traditional values.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void academics(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Academics',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          content: Column(
            children: [
              Image.network(
                'https://thumbs.dreamstime.com/b/academics-to-school-knowledge-teamwork-learning-training-academi-93399308.jpg',
                height: 350,
              ),
              Text(
                  "\n\nIn this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close',
                  style: TextStyle(fontFamily: 'Times New Roman')),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void placement(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Placement',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
          ),
          content: Column(
            children: [
              Image.network(
                'https://5.imimg.com/data5/LE/PP/MY-3104603/job-placement-services-500x500.jpg',
                height: 350,
              ),
              Text(
                  "\n\nTraining and Placement Cell actively interfaces with the reputed organizations for arranging interviews and campus drives. The cell endeavours to sort out specialized courses, workshops and corporate training sessions. Industry expert are invited intermittently to improve the knowledge of our understudy with the most recent technological developments and industry hones. We foster graduates who are well prepared to deal with the working standards of the industry in public and private sectors and help each understudy to characterize his/her career interest through expert’s advice.\nOUR GOALS\n1)To organize Campus Interviews for pre-final and final year students\n2)To arrange Industry – Institution interaction to establish a rapport with the industry"),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void HOD(BuildContext context) {
    // print("Hello");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'HoD’s Desk',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.purple[600],
            ),
          ),
          content: Column(
            children: [
              Image.network(
                'https://media-exp1.licdn.com/dms/image/C5603AQFtZJDgcYbkRA/profile-displayphoto-shrink_200_200/0/1635764797632?e=1652313600&v=beta&t=3pXfDYwfh2HfQUBJ2mYgxyLnkjGxnrRkIWJmJ8-KAAw',
              ),
              Text(
                  "\nRecently in February 2017, the department’s HoD Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got a NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. \n\nInformation Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. \n\nIt Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry ready. \n\nBesides this It Department has done a tie-up with Microsoft for conducting Training and Certification for students as well as staff in the domain of IoT and Cyber Security, first session of this training was conducted in Sept 2017.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}

void Staff(BuildContext context) {
  // print("Hello");
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'IT Department Staff',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
            color: Colors.purple[600],
          ),
        ),
        scrollable: true,
        content: Column(
          children: [
            Image.network(
              'https://th.bing.com/th/id/OIP.8m8eTqXyfn216mgnRHP9OQHaED?w=328&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
              height: 100,
            ),
            Text(
                "Ms. Atiya R. Kazi\nAsst. Professor\nQualification - M E\nStatus - USSC\nAreas of Interest - Computer Networks, Network Security, Cryptography\n\nMrs. Swati A. Powar\nAsst Professor\nQualification - M E\nStatus - USSC\nAreas of Interest - Data Analytics\n\nMr. Mandar S. Joshi\nAsst Professor\nQualification - M E\nStatus - USSC\nAreas of Interest - Operating Systems, Data Mining, Machine Learning\n\nMr. Amar R. Palwankar\nAsst Professor\nQualification - M Tech\nStatus - USSC\nAreas of Interest - Data Science IoT Machine Learning Deep Learning\n\nMr. Ashish B. Vartak\nAsst. Professor\nQualification - M Tech\nStatus - USSC\nAreas of Interest - Computer Networks,Digital Image Processing")
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    },
  );
}
