import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_routes.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:booking_doctor/features/doctor_details/presentation/views/doctor_details_screen.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentScreen extends StatefulWidget {
  @override
  _DoctorAppointmentScreenState createState() => _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
  DateTime currentMonth = DateTime(2025, 7); // July 2025
  int? selectedDay;
  String selectedDateText = "Monday, July 21";
 TimeOfDay selectedTime=TimeOfDay.now();

  List<int> availableDays = [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];

  final List<String> monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  final List<String> dayNames = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];

  // Get number of days in month
  int getDaysInMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0).day;
  }

  // Get first day of month (0 = Sunday, 1 = Monday, etc.)
  int getFirstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1).weekday % 7;
  }

  // Check if day is available
  bool isDayAvailable(int day) {
    return availableDays.contains(day);
  }

  // Handle day selection
  void selectDay(int day) {
    if (isDayAvailable(day)) {
      setState(() {
        selectedDay = day;
        // Update selected date text
        DateTime selectedDate = DateTime(
          currentMonth.year,
          currentMonth.month,
          day,
        );
        String dayName = dayNames[selectedDate.weekday % 7];
        selectedDateText =
            "$dayName, ${monthNames[currentMonth.month - 1]} $day";
      });
    }
  }

  // Navigate to previous month
  void previousMonth() {
    setState(() {
      currentMonth = DateTime(currentMonth.year, currentMonth.month - 1);
      selectedDay = null;
    });
  }

  // Navigate to next month
  void nextMonth() {
    setState(() {
      currentMonth = DateTime(currentMonth.year, currentMonth.month + 1);
      selectedDay = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final daysInMonth = getDaysInMonth(currentMonth);
    final firstDayWeekday = getFirstDayOfMonth(currentMonth);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Book Appointment',
          style: AppStyles.appBarTitleStyle
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: doctorDefinition(context),
            ),
            SizedBox(height: 20,),
            // Select a day section
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select a day',
                    style: AppStyles.nameStyle
                  ),
                  SizedBox(height: 12),
                  // Selected date dropdown-like container
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.grey[400],
                          size: 20,
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            selectedDay != null
                                ? selectedDateText
                                : 'Select a date',
                            style: TextStyle(
                              fontSize: 14,
                              color: selectedDay != null
                                  ? Colors.black
                                  : Colors.grey[500],
                            ),
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey[400]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Calendar Section
            Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: previousMonth,
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Text(
                          '${monthNames[currentMonth.month - 1]} ${currentMonth.year}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: nextMonth,
                          icon: Icon(
                            Icons.chevron_right,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
        
                  //  SizedBox(height: 16),
        
                    // Days of week
                    Row(
                      children: dayNames
                          .map(
                            (day) => Expanded(
                              child: Center(
                                child: Text(
                                  day,
                                  style: AppStyles.addReviewStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 12),
                    // Calendar grid
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.35,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                        ),
                        itemCount: 42,
                        itemBuilder: (context, index) {
                          final dayNumber = index - firstDayWeekday + 1;
                          // Previous month days
                          if (dayNumber < 1) {
                            final prevMonth = DateTime(
                              currentMonth.year,
                              currentMonth.month - 1,
                            );
                            final prevMonthDays = getDaysInMonth(prevMonth);
                            final prevDay = prevMonthDays + dayNumber;
        
                            return Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  prevDay.toString(),
                                  style: AppStyles.bioStyle.copyWith(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          }
        
                          // Next month days
                          if (dayNumber > daysInMonth) {
                            final nextDay = dayNumber - daysInMonth;
                            return Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  nextDay.toString(),
                                  style: AppStyles.bioStyle.copyWith(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          }
        
                          // Current month days
                          final isAvailable = isDayAvailable(dayNumber);
                          final isSelected = selectedDay == dayNumber;
        
                          return GestureDetector(
                            onTap: () => selectDay(dayNumber),
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xFF4285F4)
                                    : (isAvailable
                                          ? Color(0xFFE8F0FE)
                                          : AppColors.grey),
                                borderRadius: BorderRadius.circular(8),
                                border: isAvailable && !isSelected
                                    ? Border.all(color: Color(0xFFDAE3F0))
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  dayNumber.toString(),
                                  style: AppStyles.bioStyle.copyWith(
                                    color: isSelected
                                        ? Colors.white
                                        : (isAvailable
                                              ? Color(0xFF4285F4)
                                              : Colors.grey[400]),
                                    fontSize: 12,
                                    fontWeight: isSelected || isAvailable
                                        ? FontWeight.w500
                                        : FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                        'Select a time',
                        style: AppStyles.nameStyle
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.grey[400],
                            size: 20,
                          ),
                          SizedBox(width: 12),
                          Text(
                            "${selectedTime.hour}:${selectedTime.minute}",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.black
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(onPressed:()async{
                                  final TimeOfDay? timeOfDay= await showTimePicker(context: context, initialTime: selectedTime,initialEntryMode: TimePickerEntryMode.dial);
                                  if(timeOfDay!=null){
                                    setState(() {
                                      selectedTime=timeOfDay;
                                    });
                                  }
                                } ,icon:Icon(Icons.keyboard_arrow_down, color: AppColors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            
        
            // Bottom section
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '/hour',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      Spacer(),
                      Text(
                        '350\$',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFF5722),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: selectedDay != null
                          ? () {
                        Navigator.pushNamed(context, AppRoutes.doctorPaymentScreen,arguments:{
                          "time":"${selectedTime.hour}:${selectedTime.minute}",
                          "date":selectedDateText
                        });
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4285F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Continue to Pay',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          //  SizedBox(height: 10,),
        
        
          ],
        ),
      ),
    );
  }
}
