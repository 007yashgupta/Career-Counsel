import './models/career_options.dart';
import './models/career_suboptions.dart';
import './models/career_counselors.dart';




class Dummy {

//   Map<String,List<CareerSubOptions>> dataSubOptions = {
//   'Technology' : [
//     CareerSubOptions(
//       id: '1',
//       title: 'Software Development',
//       imagePath: 'assets/software_development_image.png',
//       averagePay: 100000,
//       story: "Dive into the world of software development, where creativity meets technology to build innovative solutions. With high demand and competitive salaries, this career path offers endless opportunities for growth and impact."
//     ),
//     CareerSubOptions(
//       id: '2',
//       title: 'Data Science',
//       imagePath: 'assets/data_science_image.png',
//       averagePay: 120000,
//       story: "Explore the realm of data science, where insights drive decisions and data is the new currency. With the ability to uncover hidden patterns and drive business strategies, data scientists are in high demand with lucrative salaries."
//     ),
//     CareerSubOptions(
//       id: '3',
//       title: 'Network Administration',
//       imagePath: 'assets/network_administration_image.png',
//       averagePay: 80000,
//       story: "Enter the world of network administration, where connectivity is key and security is paramount. With the ability to design, implement, and manage complex networks, network administrators play a crucial role in keeping organizations running smoothly."
//     ),
//     CareerSubOptions(
//       id: '4',
//       title: 'Cybersecurity',
//       imagePath: 'assets/cybersecurity_image.png',
//       averagePay: 110000,
//       story: "Join the frontline of defense in the digital age as a cybersecurity expert. With the constant threat of cyberattacks, cybersecurity professionals play a vital role in safeguarding sensitive information and ensuring the integrity of digital systems."
//     ),
//     // Add more sub-options for 'Technology' field if needed
//   ],
//   'Healthcare' : [
//     CareerSubOptions(
//       id: '5',
//       title: 'Nursing',
//       imagePath: 'assets/nursing_image.png',
//       averagePay: 75000,
//       story: "Enter the compassionate world of nursing, where every day brings the chance to make a real difference in patients' lives. With a rewarding blend of caregiving and medical expertise, nursing offers fulfilling careers with competitive salaries."
//     ),
//     CareerSubOptions(
//       id: '6',
//       title: 'Medical Doctor',
//       imagePath: 'assets/nursing_image.png',
//       averagePay: 75000,
//       story: "Enter the compassionate world of nursing, where every day brings the chance to make a real difference in patients' lives. With a rewarding blend of caregiving and medical expertise, nursing offers fulfilling careers with competitive salaries."
//     ),
//     CareerSubOptions(
//       id: '7',
//       title: 'Physical Therapy',
//       imagePath: 'assets/nursing_image.png',
//       averagePay: 75000,
//       story: "Enter the compassionate world of nursing, where every day brings the chance to make a real difference in patients' lives. With a rewarding blend of caregiving and medical expertise, nursing offers fulfilling careers with competitive salaries."
//     ),
//     // Add more sub-options for 'Healthcare' field if needed
//   ],
//   'Finance' : [
//     CareerSubOptions(
//       id: '8',
//       title: 'Investment Banking',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '9',
//       title: 'Financial Analysis',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '10',
//       title: 'Accounting',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
  
//     // Add more sub-options for 'Finance' field if needed
//   ],
//   'Engineering' : [
//     CareerSubOptions(
//       id: '11',
//       title: 'Mechanical Engineering',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '12',
//       title: 'Electrical Engineering',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '13',
//       title: 'Chemical Engineering',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Engineering' field
//   ],
//   'Education' : [
//     CareerSubOptions(
//       id: '14',
//       title: 'Teaching',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '15',
//       title: 'School',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Education' field
//   ],
//   'Business Management' : [
//     CareerSubOptions(
//       id: '16',
//       title: 'Investment Banking',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '17',
//       title: 'Marketing',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '18',
//       title: 'Operations Management',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Business Management' field
//   ],

//   'Arts and Design' : [
//     CareerSubOptions(
//       id: '19',
//       title: 'Graphic Design',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '20',
//       title: 'Interior Design',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '21',
//       title: 'Fashion Design',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Arts and Design' field
//   ],
//   'Hospitality and Tourism' : [
//     CareerSubOptions(
//       id: '22',
//       title: 'Hotel Management',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '23',
//       title: 'Event Planning',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Hospitality and Tourism' field
//   ],
//   'Law and Legal Services' : [
//     CareerSubOptions(
//       id: '24',
//       title: 'Corporate Law',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     CareerSubOptions(
//       id: '25',
//       title: 'Family Law',
//       imagePath: 'assets/investment_banking_image.png',
//       averagePay: 150000,
//       story: "Dive into the fast-paced world of investment banking, where financial expertise meets strategic decision-making. With high stakes and lucrative rewards, investment bankers play a pivotal role in shaping global economies."
//     ),
//     // Add sub-options for 'Law and Legal Services' field
//   ],

// };


// List<CareerOptions> dataOptions = [
//   CareerOptions(title: 'Technology', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title: 'Healthcare', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title: 'Finance', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title: 'Education', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title:  'Business Management', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title: 'Marketing', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title: 'Arts and Design', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title:  'Hospitality and Tourism', story: 'story', imagePath: 'imagepath'),
//   CareerOptions(title:  'Law and Legal Services', story: 'story', imagePath: 'imagepath'),
// ];

List<CareerOptions> dataOptions = [
  CareerOptions(
    title: 'Technology',
    story: "Embark on a journey of innovation and creativity in the dynamic field of technology.",
    imagePath: 'assets/images/dataOptions/technology_image.jpg',
  ),
  CareerOptions(
    title: 'Healthcare',
    story: "Answer the call to care and compassion in the noble field of healthcare.",
    imagePath: 'assets/images/dataOptions/healthcare_image.jpg',
  ),
  CareerOptions(
    title: 'Finance',
    story: "Navigate the dynamic world of finance where strategy meets opportunity.",
    imagePath: 'assets/images/dataOptions/finance_image.jpg',
  ),
  CareerOptions(
    title: 'Education',
    story: "Empower the future through the transformative power of education.",
    imagePath: 'assets/images/dataOptions/education_image.jpg',
  ),

  CareerOptions(
    title: 'Arts and Design',
    story: "Express your creativity and imagination in the vibrant world of arts and design.",
    imagePath: 'assets/images/dataOptions/business_management_image.jpg',
  ),
  CareerOptions(
    title: 'Hospitality and Tourism',
    story: "Welcome guests and create unforgettable experiences in the dynamic hospitality and tourism industry.",
    imagePath: 'assets/images/dataOptions/business_management_image.jpg',
  ),
  CareerOptions(
    title: 'Law and Legal Services',
    story: "Champion justice and uphold the rule of law in the esteemed field of legal services.",
    imagePath: 'assets/images/dataOptions/law_and_legal_services_image.jpg',
  ),
];


Map<String,List<CareerSubOptions>> dataSubOptions = {
  'Technology' : [
    CareerSubOptions(
      id: '1',
      title: 'Software Development',
      imagePath: 'assets/images/dataOptions/technology_image.jpg',
      averagePay: 100000,
      story: "Enter the dynamic world of software development, where innovation knows no bounds. From creating user-friendly applications to solving complex problems, software developers shape the future of technology with their coding prowess and creative thinking."
    ),
    CareerSubOptions(
      id: '2',
      title: 'Data Science',
      imagePath: 'assets/images/dataOptions/technology_image.jpg',
      averagePay: 120000,
      story: "Unlock the power of data in the exciting field of data science. With expertise in statistical analysis and machine learning algorithms, data scientists unravel insights from vast datasets, driving informed decisions and shaping industries across the globe."
    ),
    CareerSubOptions(
      id: '3',
      title: 'Network Administration',
      imagePath: 'assets/images/dataOptions/technology_image.jpg',
      averagePay: 80000,
      story: "Step into the backbone of modern connectivity as a network administrator. From designing secure networks to troubleshooting complex issues, network administrators ensure seamless communication and data flow, keeping organizations connected and protected."
    ),
    CareerSubOptions(
      id: '4',
      title: 'Cybersecurity',
      imagePath:'assets/images/dataOptions/technology_image.jpg',
      averagePay: 110000,
      story: "Join the frontlines of digital defense as a cybersecurity expert. With the rise of cyber threats, cybersecurity professionals play a critical role in safeguarding sensitive information and preserving the integrity of digital infrastructure, making the online world safer for all."
    ),
    // Add more sub-options for 'Technology' field if needed
  ],
  'Healthcare' : [
    CareerSubOptions(
      id: '5',
      title: 'Nursing',
      imagePath: 'assets/images/dataOptions/healthcare_image.jpg',
      averagePay: 75000,
      story: "Embark on a rewarding journey in nursing, where compassion meets critical care. From bedside support to lifesaving interventions, nurses provide holistic care to patients, making a meaningful difference in their lives every day."
    ),
    CareerSubOptions(
      id: '6',
      title: 'Medical Doctor',
      imagePath: 'assets/images/dataOptions/healthcare_image.jpg',
      averagePay: 150000,
      story: "Pursue excellence in medicine as a dedicated medical doctor. With rigorous training and expertise in diagnosis and treatment, doctors lead the charge in healthcare, improving patient outcomes and advancing medical science to new heights."
    ),
    CareerSubOptions(
      id: '7',
      title: 'Physical Therapy',
      imagePath: 'assets/images/dataOptions/healthcare_image.jpg',
      averagePay: 85000,
      story: "Empower individuals to reclaim their health and mobility as a physical therapist. Through personalized rehabilitation programs and therapeutic interventions, physical therapists help patients overcome injuries and disabilities, restoring independence and quality of life."
    ),
    // Add more sub-options for 'Healthcare' field if needed
  ],
  'Finance' : [
    CareerSubOptions(
      id: '8',
      title: 'Investment Banking',
      imagePath: 'assets/images/dataOptions/finance_image.jpg',
      averagePay: 150000,
      story: "Navigate the intricate world of finance as an investment banker. From strategic mergers to capital raising, investment bankers drive economic growth and financial prosperity, shaping the global landscape of commerce and industry."
    ),
    CareerSubOptions(
      id: '9',
      title: 'Financial Analysis',
      imagePath: 'assets/images/dataOptions/finance_image.jpg',
      averagePay: 120000,
      story: "Delve into the depths of financial markets as a skilled financial analyst. With keen analytical insights and strategic foresight, financial analysts provide invaluable guidance to businesses and investors, ensuring sound financial decisions and sustainable growth."
    ),
    CareerSubOptions(
      id: '10',
      title: 'Accounting',
      imagePath: 'assets/images/dataOptions/finance_image.jpg',
      averagePay: 80000,
      story: "Master the language of business as an accountant. From managing financial records to ensuring regulatory compliance, accountants play a vital role in maintaining fiscal integrity and transparency, driving organizational success and stakeholder confidence."
    ),
    // Add more sub-options for 'Finance' field if needed
  ],
  'Education' : [
    CareerSubOptions(
      id: '11',
      title: 'Mechanical Engineering',
      imagePath: 'assets/mechanical_engineering_image.png',
      averagePay: 95000,
      story: "Embark on a journey of innovation and design as a mechanical engineer. From conceptualizing new machines to optimizing existing systems, mechanical engineers drive technological advancements and tackle real-world challenges, shaping the future of industries worldwide."
    ),
    CareerSubOptions(
      id: '12',
      title: 'Electrical Engineering',
      imagePath: 'assets/electrical_engineering_image.png',
      averagePay: 100000,
      story: "Illuminate the world with your expertise in electrical engineering. From powering cities to revolutionizing electronics, electrical engineers play a crucial role in shaping modern infrastructure and technological breakthroughs, making life safer, more efficient, and more connected."
    ),
    // Add more sub-options for 'Engineering' field if needed
  ],

 
  'Arts and Design' : [
    CareerSubOptions(
      id: '19',
      title: 'Graphic Design',
      imagePath: 'assets/images/dataOptions/business_management_image.jpg',
      averagePay: 65000,
      story: "Blend creativity and technology to communicate visually as a graphic designer. From conceptualizing design solutions to crafting compelling visuals, graphic designers bring ideas to life, evoke emotions, and inspire action across various media platforms, leaving a lasting impression on audiences."
    ),
    CareerSubOptions(
      id: '20',
      title: 'Interior Design',
      imagePath: 'assets/images/dataOptions/business_management_image.jpg',
      averagePay: 70000,
      story: "Transform spaces into immersive experiences that enhance quality of life as an interior designer. From conceptualizing layouts to selecting décor, interior designers create functional and aesthetically pleasing environments that reflect clients' personalities, lifestyles, and aspirations, elevating living and working spaces."
    ),
    // Add more sub-options for 'Arts and Design' field if needed
  ],
  'Hospitality and Tourism' : [
    CareerSubOptions(
      id: '21',
      title: 'Hotel Management',
      imagePath: 'assets/images/dataOptions/business_management_image.jpg',
      averagePay: 60000,
      story: "Welcome guests and create memorable experiences as a hospitality professional in hotel management. From ensuring seamless operations to delivering exceptional service, hotel managers oversee every aspect of guest satisfaction, fostering loyalty and reputation in the competitive hospitality industry."
    ),
    CareerSubOptions(
      id: '22',
      title: 'Event Planning',
      imagePath: 'assets/images/dataOptions/business_management_image.jpg',
      averagePay: 65000,
      story: "Bring visions to life and orchestrate unforgettable moments as an event planner. From conceptualizing themes to coordinating logistics, event planners curate immersive experiences that captivate audiences, celebrate milestones, and leave lasting impressions, making dreams a reality."
    ),
    // Add more sub-options for 'Hospitality and Tourism' field if needed
  ],
  'Law and Legal Services' : [
    CareerSubOptions(
      id: '23',
      title: 'Corporate Law',
      imagePath: 'assets/images/dataOptions/law_and_legal_services_image.jpg',
  
      averagePay: 120000,
      story: "Navigate the complexities of corporate governance and transactions as a corporate lawyer. From advising on mergers to drafting contracts, corporate lawyers provide legal counsel that safeguards businesses' interests, fosters compliance, and facilitates strategic growth and innovation."
    ),
    CareerSubOptions(
      id: '24',
      title: 'Family Law',
      imagePath: 'assets/images/dataOptions/law_and_legal_services_image.jpg',
      averagePay: 80000,
      story: "Champion justice and advocate for families in need as a family lawyer. From resolving disputes to facilitating adoptions, family lawyers provide compassionate legal support that safeguards familial bonds, protects vulnerable individuals, and ensures equitable resolutions in family matters."
    ),
  ]
  // Add sub-options for other career fields similarly
};


List<CareerCounselor> careerCounselorsList =  [
  CareerCounselor(
    id: DateTime.now().toIso8601String(),
    fullName: 'Amit Patel',
    domain: 'Technology',
    imagePath: 'assets/images/counselors/male_counselor.jpg',
    story: 'Amit Patel is a technology enthusiast with over 10 years of experience in software development. He specializes in web and mobile app development and is passionate about helping students kickstart their careers in tech.',
    fees: 1500,
  ),
  CareerCounselor(
    id: DateTime.now().toIso8601String(),
    fullName: 'Emily Wong',
    domain: 'Arts and Design',
    imagePath: 'assets/images/counselors/female_counselor.jpg',
    story: 'Emily Wong is a talented artist and designer who has worked in various creative industries for over 15 years. She loves mentoring young artists and guiding them through the intricacies of visual arts and design.',
    fees: 1200,
  ),
  CareerCounselor(
    id: DateTime.now().toIso8601String(),
    fullName: 'Sarah Johnson',
    domain: 'Education',
    imagePath: 'assets/images/counselors/female_counselor.jpg',
    story: 'Sarah Johnson is a dedicated educator with a passion for teaching and learning. With a background in education psychology, she provides personalized guidance to students to help them achieve academic success and career goals.',
    fees: 1000,
  ),
  CareerCounselor(
    id: DateTime.now().toIso8601String(),
    fullName: 'Rajesh Gupta',
    domain: 'Healthcare',
    imagePath: 'assets/images/counselors/male_counselor.jpg',
    story: 'Dr. Rajesh Gupta is a renowned physician and healthcare consultant with extensive experience in patient care and medical research. He offers counseling to aspiring healthcare professionals and advises them on career paths in the medical field.',
    fees: 1800,
  ),
];





}