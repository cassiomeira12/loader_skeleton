library loader_skeleton;

import 'package:flutter/material.dart';

class CardSkeleton extends StatefulWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  CardSkeleton({this.isCircularImage = true, this.isBottomLinesActive = true});
  @override
  _CardSkeletonState createState() => _CardSkeletonState();
}

class _CardSkeletonState extends State<CardSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: width * 0.13,
                      width: width * 0.13,
                      decoration: myBoxDecLight(animation,
                          isCircle: widget.isCircularImage),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: width * 0.13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: height * 0.008,
                            width: width * 0.3,
                            decoration: myBoxDecLight(animation),
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.2,
                            decoration: myBoxDecLight(animation),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                widget.isBottomLinesActive
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.7,
                            decoration: myBoxDecLight(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.8,
                            decoration: myBoxDecLight(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.5,
                            decoration: myBoxDecLight(animation),
                          ),
                        ],
                      )
                    : Offstage()
              ],
            ),
          ),
        );
      },
    );
  }
}

Decoration myBoxDecLight(
  animation, {
  isCircle = false,
  Color? lineColor,
}) {
  return BoxDecoration(
    shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        lineColor ?? Color(0xfff6f7f9),
        lineColor ?? Color(0xffe9ebee),
        lineColor ?? Color(0xfff6f7f9),
      ],
      stops: [
        animation.value - 1,
        animation.value,
        animation.value + 1,
      ],
    ),
  );
}

Decoration myBoxDecDark(
  animation, {
  isCircle = false,
  Color? lineColor,
}) {
  return BoxDecoration(
    shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        lineColor ?? Colors.grey[700]!,
        lineColor ?? Colors.grey[600]!,
        lineColor ?? Colors.grey[700]!,
      ],
      stops: [
        animation.value - 1,
        animation.value,
        animation.value + 1,
      ],
    ),
  );
}

class DarkCardSkeleton extends StatefulWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  DarkCardSkeleton(
      {this.isCircularImage = true, this.isBottomLinesActive = true});
  @override
  _DarkCardSkeletonState createState() => _DarkCardSkeletonState();
}

class _DarkCardSkeletonState extends State<DarkCardSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: width * 0.13,
                      width: width * 0.13,
                      decoration: myBoxDecDark(
                        animation,
                        isCircle: widget.isCircularImage,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: width * 0.13,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: height * 0.008,
                            width: width * 0.3,
                            decoration: myBoxDecDark(animation),
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.2,
                            decoration: myBoxDecDark(animation),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                widget.isBottomLinesActive
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.7,
                            decoration: myBoxDecDark(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.8,
                            decoration: myBoxDecDark(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.5,
                            decoration: myBoxDecDark(animation),
                          ),
                        ],
                      )
                    : Offstage()
              ],
            ),
          ),
        );
      },
    );
  }
}

class CardListSkeleton extends StatelessWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  final int length;
  CardListSkeleton({
    this.isCircularImage = true,
    this.length = 10,
    this.isBottomLinesActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (BuildContext context, int index) {
        return CardSkeleton(
          isCircularImage: isCircularImage,
          isBottomLinesActive: isBottomLinesActive,
        );
      },
    );
  }
}

class DarkCardListSkeleton extends StatelessWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  final int length;
  DarkCardListSkeleton({
    this.isCircularImage = true,
    this.length = 10,
    this.isBottomLinesActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (BuildContext context, int index) {
        return DarkCardSkeleton(
          isCircularImage: isCircularImage,
          isBottomLinesActive: isBottomLinesActive,
        );
      },
    );
  }
}

class CardProfileSkeleton extends StatefulWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  CardProfileSkeleton(
      {this.isCircularImage = true, this.isBottomLinesActive = true});
  @override
  _CardProfileSkeletonState createState() => _CardProfileSkeletonState();
}

class _CardProfileSkeletonState extends State<CardProfileSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  decoration: myBoxDecLight(animation,
                      isCircle: widget.isCircularImage),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (i) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: width * 0.13,
                            width: width * 0.13,
                            decoration: myBoxDecLight(animation,
                                isCircle: widget.isCircularImage),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: width * 0.13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: height * 0.008,
                                  width: width * 0.3,
                                  decoration: myBoxDecLight(animation),
                                ),
                                Container(
                                  height: height * 0.007,
                                  width: width * 0.2,
                                  decoration: myBoxDecLight(animation),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                widget.isBottomLinesActive
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.7,
                            decoration: myBoxDecLight(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.8,
                            decoration: myBoxDecLight(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.5,
                            decoration: myBoxDecLight(animation),
                          ),
                        ],
                      )
                    : Offstage()
              ],
            ),
          ),
        );
      },
    );
  }
}

class DarkCardProfileSkeleton extends StatefulWidget {
  final bool isCircularImage;
  final bool isBottomLinesActive;
  DarkCardProfileSkeleton(
      {this.isCircularImage = true, this.isBottomLinesActive = true});
  @override
  _DarkCardProfileSkeletonState createState() =>
      _DarkCardProfileSkeletonState();
}

class _DarkCardProfileSkeletonState extends State<DarkCardProfileSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(curve: Curves.easeInOutSine, parent: _controller));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[800],
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: width * 0.25,
                  width: width * 0.25,
                  decoration:
                      myBoxDecDark(animation, isCircle: widget.isCircularImage),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (i) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: width * 0.13,
                            width: width * 0.13,
                            decoration: myBoxDecDark(animation,
                                isCircle: widget.isCircularImage),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: width * 0.13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: height * 0.008,
                                  width: width * 0.3,
                                  decoration: myBoxDecDark(animation),
                                ),
                                Container(
                                  height: height * 0.007,
                                  width: width * 0.2,
                                  decoration: myBoxDecDark(animation),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                widget.isBottomLinesActive
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.7,
                            decoration: myBoxDecDark(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.8,
                            decoration: myBoxDecDark(animation),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: height * 0.007,
                            width: width * 0.5,
                            decoration: myBoxDecDark(animation),
                          ),
                        ],
                      )
                    : Offstage()
              ],
            ),
          ),
        );
      },
    );
  }
}

class CardPageSkeleton extends StatefulWidget {
  final int totalLines;
  Color backgroundColor;
  Color? lineColor;

  CardPageSkeleton({
    this.totalLines = 5,
    this.backgroundColor = Colors.white,
    this.lineColor,
  });

  @override
  _CardPageSkeletonState createState() => _CardPageSkeletonState();
}

class _CardPageSkeletonState extends State<CardPageSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(CurvedAnimation(
      curve: Curves.easeInOutSine,
      parent: _controller,
    ));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: widget.backgroundColor,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(widget.totalLines, (i) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: height * 0.007,
                      width: width * 0.7,
                      decoration: myBoxDecLight(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.007,
                      width: width * 0.8,
                      decoration: myBoxDecLight(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.007,
                      width: width * 0.5,
                      decoration: myBoxDecLight(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}

class DarkCardPageSkeleton extends StatefulWidget {
  final int totalLines;
  Color backgroundColor;
  Color? lineColor;

  DarkCardPageSkeleton({
    this.totalLines = 5,
    this.backgroundColor = Colors.grey,
    this.lineColor,
  });

  @override
  _DarkCardPageSkeletonState createState() => _DarkCardPageSkeletonState();
}

class _DarkCardPageSkeletonState extends State<DarkCardPageSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation = Tween<double>(begin: -1.0, end: 2.0).animate(CurvedAnimation(
      curve: Curves.easeInOutSine,
      parent: _controller,
    ));

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        _controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: widget.backgroundColor,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(widget.totalLines, (i) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: height * 0.007,
                      width: width * 0.7,
                      decoration: myBoxDecDark(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.007,
                      width: width * 0.8,
                      decoration: myBoxDecDark(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.007,
                      width: width * 0.5,
                      decoration: myBoxDecDark(
                        animation,
                        lineColor: widget.lineColor,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
