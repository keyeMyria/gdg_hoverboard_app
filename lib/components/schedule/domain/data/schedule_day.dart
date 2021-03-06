import 'time_slot.dart';
import 'track.dart';

class ScheduleDay {
  String dateReadable;
  String date;
  List<TimeSlot> timeSlots;
  List<Track> tracks;

  ScheduleDay(Map map) {
    dateReadable = map["dateReadable"];
    date = map["date"];

    timeSlots = TimeSlot.mapTimeSlots(map["timeslots"]);
    tracks = Track.mapTracks(map["tracks"]);
  }

  @override
  String toString() {
    return 'ScheduleDay{dateReadable: $dateReadable, date: $date, timeSlots: $timeSlots, tracks: $tracks}';
  }
}
