import 'package:flutter/material.dart';
import 'package:park_space/screens/auth/register_screen.dart';
import 'package:park_space/screens/auth/signin_screen.dart';
import 'package:park_space/screens/home/home_screen.dart';
import 'package:park_space/screens/onboard/onboard_screen.dart';

class AppRoutes {
  // static const String iconsScreen = '/icons_screen';

  // static const String calendarScreen = '/calendar_screen';

  // static const String textScreen = '/text_screen';

  // static const String brandScreen = '/brand_screen';

  // static const String buttonsScreen = '/buttons_screen';

  // static const String progressScreen = '/progress_screen';

  // static const String onboaringFiveScreen = '/onboaring_five_screen';

  // static const String onboaringOneScreen = '/onboaring_one_screen';

  // static const String homeTwoScreen = '/home_two_screen';

  // static const String searchOneScreen = '/search_one_screen';

  // static const String viewLocalPage = '/view_local_page';

  // static const String viewLocalContainerScreen = '/view_local_container_screen';

  // static const String rentParkingSlotOneScreen =
  //     '/rent_parking_slot_one_screen';

  // static const String onboaringTwoScreen = '/onboaring_two_screen';

  // static const String onboaringThreeScreen = '/onboaring_three_screen';

  // static const String logInOneScreen = '/log_in_one_screen';

  // static const String homeOneScreen = '/home_one_screen';

  // static const String viewLocalOneScreen = '/view_local_one_screen';

  // static const String rentParkingSlotScreen = '/rent_parking_slot_screen';

  // static const String rentRequestsScreen = '/rent_requests_screen';

  // static const String myAccountProfileScreen = '/my_account_profile_screen';

  // static const String onboaringFourScreen = '/onboaring_four_screen';

  // static const String onboaringScreen = '/onboaring_screen';

  // static const String languageScreen = '/language_screen';

  // static const String logInScreen = '/log_in_screen';

  // static const String registerUserScreen = '/register_user_screen';

  // static const String logInVerificationScreen = '/log_in_verification_screen';

  // static const String forgotMyPasswordScreen = '/forgot_my_password_screen';

  // static const String homeScreen = '/home_screen';

  // static const String searchScreen = '/search_screen';

  // static const String searchFiltersCorporateParkingSpotsScreen =
  //     '/search_filters_corporate_parking_spots_screen';

  // static const String searchResultsScreen = '/search_results_screen';

  // static const String viewLocalPjScreen = '/view_local_pj_screen';

  // static const String viewLocalPjFavoriteScreen =
  //     '/view_local_pj_favorite_screen';

  // static const String viewLocalPfScreen = '/view_local_pf_screen';

  // static const String rentParkingSlotPjScreen = '/rent_parking_slot_pj_screen';

  // static const String rentParkingSlotPfDailyScreen =
  //     '/rent_parking_slot_pf_daily_screen';

  // static const String rentParkingSlotPfMonthlyScreen =
  //     '/rent_parking_slot_pf_monthly_screen';

  // static const String confirmBookingScreen = '/confirm_booking_screen';

  // static const String bookedApprovedScreen = '/booked_approved_screen';

  // static const String bookingPendingScreen = '/booking_pending_screen';

  // static const String bookingDeniedScreen = '/booking_denied_screen';

  // static const String writeReviewScreen = '/write_review_screen';

  // static const String reviewReceivedScreen = '/review_received_screen';

  // static const String myBookingsActiveBookingsScreen =
  //     '/my_bookings_active_bookings_screen';

  // static const String myBookingsBookingHistoryScreen =
  //     '/my_bookings_booking_history_screen';

  // static const String myBookingsAddTimeScreen = '/my_bookings_add_time_screen';

  // static const String myBookingsAddTimeOkScreen =
  //     '/my_bookings_add_time_ok_screen';

  // static const String myBookingsAddTimeDeniedScreen =
  //     '/my_bookings_add_time_denied_screen';

  // static const String favoritesScreen = '/favorites_screen';

  // static const String favoritesFolderScreen = '/favorites_folder_screen';

  // static const String editProfileScreen = '/edit_profile_screen';

  // static const String hostFirstProfileScreen = '/host_first_profile_screen';

  // static const String hostFirstProfileUnderReviewScreen =
  //     '/host_first_profile_under_review_screen';

  // static const String walletPurchaseHistoryScreen =
  //     '/wallet_purchase_history_screen';

  // static const String notificationsScreen = '/notifications_screen';

  // static const String notificationsNoNewNotificationsScreen =
  //     '/notifications_no_new_notifications_screen';

  // static const String myVehiclesScreen = '/my_vehicles_screen';

  // static const String addNewVehicleScreen = '/add_new_vehicle_screen';

  // static const String myVehiclesEditScreen = '/my_vehicles_edit_screen';

  // static const String myAddressesScreen = '/my_addresses_screen';

  // static const String myAddressesAddAddressScreen =
  //     '/my_addresses_add_address_screen';

  // static const String myAddressesEditAddressScreen =
  //     '/my_addresses_edit_address_screen';

  // static const String messagesScreen = '/messages_screen';

  // static const String messagesOneScreen = '/messages_one_screen';

  // static const String setLanguageScreen = '/set_language_screen';

  // static const String faqAnswersScreen = '/faq_answers_screen';

  // static const String faqQuestionsScreen = '/faq_questions_screen';

  // static const String privacyPolicyScreen = '/privacy_policy_screen';

  // static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  // static const String supportScreen = '/support_screen';

  // static const String supportTicketScreen = '/support_ticket_screen';

  // static const String supportMyTicketsScreen = '/support_my_tickets_screen';

  // static const String supportSeeTicketOpenScreen =
  //     '/support_see_ticket_open_screen';

  // static const String myTicketsMessagesScreen = '/my_tickets_messages_screen';

  // static const String supportSeeTicketResolvedScreen =
  //     '/support_see_ticket_resolved_screen';

  // static const String searchNoResultsScreen = '/search_no_results_screen';

  // static const String searchResultsNoResultsFindClosestFindScreen =
  //     '/search_results_no_results_find_closest_find_screen';

  // static const String faqNoAnswersFoundScreen = '/faq_no_answers_found_screen';

  // static const String favoritesNoFavoritesScreen =
  //     '/favorites_no_favorites_screen';

  // static const String bookedApprovedDirectionsScreen =
  //     '/booked_approved_directions_screen';

  // static const String bookingHistorySelectBookingScreen =
  //     '/booking_history_select_booking_screen';

  // static const String searchFiltersPrivateParkingSpotsScreen =
  //     '/search_filters_private_parking_spots_screen';

  // static const String rentParkingSlotPjNoCarsScreen =
  //     '/rent_parking_slot_pj_no_cars_screen';

  // static const String appNavigationScreen = '/app_navigation_screen';

  static const String appHome = '/';
  static const String onBoard = '/onboard';
  static const String onRegister = '/auth/register';
  static const String onLogin = '/auth/login';

  static Map<String, WidgetBuilder> routes = {
    appHome: (context) => const HomeScreen(),
    onBoard: (context) => const OnBoardScreen(),
    onRegister: (context) => const RegisterScreen(),
    onLogin: (context) => const SigninScreen(),

    // iconsScreen: (context) => IconsScreen(),
    // calendarScreen: (context) => CalendarScreen(),
    // textScreen: (context) => TextScreen(),
    // brandScreen: (context) => BrandScreen(),
    // buttonsScreen: (context) => ButtonsScreen(),
    // progressScreen: (context) => ProgressScreen(),
    // onboaringFiveScreen: (context) => OnboaringFiveScreen(),
    // onboaringOneScreen: (context) => OnboaringOneScreen(),
    // homeTwoScreen: (context) => HomeTwoScreen(),
    // searchOneScreen: (context) => SearchOneScreen(),
    // viewLocalContainerScreen: (context) => ViewLocalContainerScreen(),
    // rentParkingSlotOneScreen: (context) => RentParkingSlotOneScreen(),
    // onboaringTwoScreen: (context) => OnboaringTwoScreen(),
    // onboaringThreeScreen: (context) => OnboaringThreeScreen(),
    // logInOneScreen: (context) => LogInOneScreen(),
    // homeOneScreen: (context) => HomeOneScreen(),
    // viewLocalOneScreen: (context) => ViewLocalOneScreen(),
    // rentParkingSlotScreen: (context) => RentParkingSlotScreen(),
    // rentRequestsScreen: (context) => RentRequestsScreen(),
    // myAccountProfileScreen: (context) => MyAccountProfileScreen(),
    // onboaringFourScreen: (context) => OnboaringFourScreen(),
    // onboaringScreen: (context) => OnboaringScreen(),
    // languageScreen: (context) => LanguageScreen(),
    // logInScreen: (context) => LogInScreen(),
    // registerUserScreen: (context) => RegisterUserScreen(),
    // logInVerificationScreen: (context) => LogInVerificationScreen(),
    // forgotMyPasswordScreen: (context) => ForgotMyPasswordScreen(),
    // homeScreen: (context) => HomeScreen(),
    // searchScreen: (context) => SearchScreen(),
    // searchFiltersCorporateParkingSpotsScreen: (context) =>
    //     SearchFiltersCorporateParkingSpotsScreen(),
    // searchResultsScreen: (context) => SearchResultsScreen(),
    // viewLocalPjScreen: (context) => ViewLocalPjScreen(),
    // viewLocalPjFavoriteScreen: (context) => ViewLocalPjFavoriteScreen(),
    // viewLocalPfScreen: (context) => ViewLocalPfScreen(),
    // rentParkingSlotPjScreen: (context) => RentParkingSlotPjScreen(),
    // rentParkingSlotPfDailyScreen: (context) => RentParkingSlotPfDailyScreen(),
    // rentParkingSlotPfMonthlyScreen: (context) =>
    //     RentParkingSlotPfMonthlyScreen(),
    // confirmBookingScreen: (context) => ConfirmBookingScreen(),
    // bookedApprovedScreen: (context) => BookedApprovedScreen(),
    // bookingPendingScreen: (context) => BookingPendingScreen(),
    // bookingDeniedScreen: (context) => BookingDeniedScreen(),
    // writeReviewScreen: (context) => WriteReviewScreen(),
    // reviewReceivedScreen: (context) => ReviewReceivedScreen(),
    // myBookingsActiveBookingsScreen: (context) =>
    //     MyBookingsActiveBookingsScreen(),
    // myBookingsBookingHistoryScreen: (context) =>
    //     MyBookingsBookingHistoryScreen(),
    // myBookingsAddTimeScreen: (context) => MyBookingsAddTimeScreen(),
    // myBookingsAddTimeOkScreen: (context) => MyBookingsAddTimeOkScreen(),
    // myBookingsAddTimeDeniedScreen: (context) => MyBookingsAddTimeDeniedScreen(),
    // favoritesScreen: (context) => FavoritesScreen(),
    // favoritesFolderScreen: (context) => FavoritesFolderScreen(),
    // editProfileScreen: (context) => EditProfileScreen(),
    // hostFirstProfileScreen: (context) => HostFirstProfileScreen(),
    // hostFirstProfileUnderReviewScreen: (context) =>
    //     HostFirstProfileUnderReviewScreen(),
    // walletPurchaseHistoryScreen: (context) => WalletPurchaseHistoryScreen(),
    // notificationsScreen: (context) => NotificationsScreen(),
    // notificationsNoNewNotificationsScreen: (context) =>
    //     NotificationsNoNewNotificationsScreen(),
    // myVehiclesScreen: (context) => MyVehiclesScreen(),
    // addNewVehicleScreen: (context) => AddNewVehicleScreen(),
    // myVehiclesEditScreen: (context) => MyVehiclesEditScreen(),
    // myAddressesScreen: (context) => MyAddressesScreen(),
    // myAddressesAddAddressScreen: (context) => MyAddressesAddAddressScreen(),
    // myAddressesEditAddressScreen: (context) => MyAddressesEditAddressScreen(),
    // messagesScreen: (context) => MessagesScreen(),
    // messagesOneScreen: (context) => MessagesOneScreen(),
    // setLanguageScreen: (context) => SetLanguageScreen(),
    // faqAnswersScreen: (context) => FaqAnswersScreen(),
    // faqQuestionsScreen: (context) => FaqQuestionsScreen(),
    // privacyPolicyScreen: (context) => PrivacyPolicyScreen(),
    // termsAndConditionsScreen: (context) => TermsAndConditionsScreen(),
    // supportScreen: (context) => SupportScreen(),
    // supportTicketScreen: (context) => SupportTicketScreen(),
    // supportMyTicketsScreen: (context) => SupportMyTicketsScreen(),
    // supportSeeTicketOpenScreen: (context) => SupportSeeTicketOpenScreen(),
    // myTicketsMessagesScreen: (context) => MyTicketsMessagesScreen(),
    // supportSeeTicketResolvedScreen: (context) =>
    //     SupportSeeTicketResolvedScreen(),
    // searchNoResultsScreen: (context) => SearchNoResultsScreen(),
    // searchResultsNoResultsFindClosestFindScreen: (context) =>
    //     SearchResultsNoResultsFindClosestFindScreen(),
    // faqNoAnswersFoundScreen: (context) => FaqNoAnswersFoundScreen(),
    // favoritesNoFavoritesScreen: (context) => FavoritesNoFavoritesScreen(),
    // bookedApprovedDirectionsScreen: (context) =>
    //     BookedApprovedDirectionsScreen(),
    // bookingHistorySelectBookingScreen: (context) =>
    //     BookingHistorySelectBookingScreen(),
    // searchFiltersPrivateParkingSpotsScreen: (context) =>
    //     SearchFiltersPrivateParkingSpotsScreen(),
    // rentParkingSlotPjNoCarsScreen: (context) => RentParkingSlotPjNoCarsScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen()
  };
}
