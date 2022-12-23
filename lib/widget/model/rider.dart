class Rider {
   final String id;
  final String ridename;
  final String rideimg;
  final int ridefare;

  const Rider({
       required this.id,
    required this.ridename,
    required this.rideimg,
    required this.ridefare,
 
  });
}

List<Rider> riders = [
  const Rider(
    id: '01',
    ridename: 'CYCLE',
    rideimg:
        "https://i.pinimg.com/564x/68/7a/1e/687a1e09f790a1ddf6af72f6532aaed7.jpg",
    ridefare: 100,
  ),
  const Rider(
      id: '02',
    ridename: 'BIKE',
    rideimg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx8kmRSq4QsQ6TEN03uEUrayYzT3pfav3TdQ&usqp=CAU",
    ridefare: 300,
  ),
  const Rider(
      id: '03',
    ridename: 'BUS',
    rideimg:
        "https://p.kindpng.com/picc/s/555-5552601_bus-side-bus-side-icon-png-transparent-png.png",
    ridefare: 10000,
  ),
  const Rider(
      id: '04',
    ridename: 'CAR',
    rideimg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG99UB9y8FArYR3EENzq1b41kPgi7rSLYIuPy4NWkmSLk3qBDUYL0JJQZazmvV8PWqAZw&usqp=CAU",
    ridefare: 1500,
  ),
  const Rider(
      id: '05',
    ridename: 'TAXI',
    rideimg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwnbI-fvgL16mksmy4mN6QPuvlwnNlYt1p_btUVxr5QGg75GiY1TP41YyOHz5TxycrjHo&usqp=CAU",
    ridefare: 1000,
  ),
  const Rider(
      id: '06',
    ridename: 'RICKSHAW',
    rideimg:
        "https://media.istockphoto.com/vectors/cycle-rickshaw-icon-transportation-related-vector-vector-id1303123272?b=1&k=20&m=1303123272&s=170667a&w=0&h=sX4rxCfxfIh7WTgCwgiavCvNza3BNArcKzJDD_sHbN4=",
    ridefare: 100,
  ),
  const Rider(
      id: '07',
      ridename: 'AUTO',
      rideimg:
          "https://cdn.create.vista.com/api/media/medium/452056154/stock-vector-list-commercial-landed-vehicles-transportation?token=",
      ridefare: 100),
  const Rider(
      id: '08',
    ridename: 'Helicupter',
    rideimg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_5F7cqKucxYWV8fk-uIqk6WTfrXFpArqhGg&usqp=CAU",
    ridefare: 10000,
  ),
  const Rider(
      id: '09',
    ridename: 'BOAT',
    rideimg:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqBqRhXaRP37BG-BmiqAw4sHmS3uTZCHrKEQ&usqp=CAU",
    ridefare: 5000,
  ),
  const Rider(
      id: '10',
    ridename: 'Van',
    rideimg:
        "https://png.pngtree.com/png-vector/20190515/ourmid/pngtree-train-icon-png-image_1043136.jpg",
    ridefare: 1000,
  ),
];
