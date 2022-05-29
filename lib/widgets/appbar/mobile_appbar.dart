import 'package:flutter/material.dart';

class MobileAppbar extends StatefulWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  State<MobileAppbar> createState() => _MobileAppbarState();
}

class _MobileAppbarState extends State<MobileAppbar> {
  late bool hoveredHome = false;
  late bool hoveredAbout = false;
  late bool hoveredProjects = false;
  late bool hoveredContact = false;
  late bool hoveredResume = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 3,
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Menu",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredHome
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredHome = value;
                  });
                },
                onTap: () {},
                child: Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredAbout
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredAbout = value;
                  });
                },
                onTap: () {},
                child: Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredProjects
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredProjects = value;
                  });
                },
                onTap: () {},
                child: Text(
                  "Projects",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  boxShadow: hoveredContact
                      ? [
                          const BoxShadow(
                            color: Colors.blueGrey,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 5,
                          )
                        ]
                      : null),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    hoveredContact = value;
                  });
                },
                onTap: () {},
                child: Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
