////////////////////
@name "motorway";
////////////////////

street {
    totalNumLanesOneway: 2;
    totalNumLanes: 4;
    laneWidth: 3.5;
    filletRadius: 10.;
}

section(item.oneway) {
    class:
        if (item.totalLanes == 4) motorway_lanes_4 |
        if (item.totalLanes == 3) motorway_lanes_3 |
        if (item.totalLanes == 2) motorway_lanes_2 |
        if (item.totalLanes == 1) motorway_lanes_1
    ;
}

section {
    class:
        if (item.totalLanes == 4) motorway_lanes_2_2 |
        if (item.totalLanes == 3) motorway_lanes_2_1 |
        if (item.totalLanes == 2) motorway_lanes_1_1 |
        if (item.totalLanes == 1) motorway_lanes_1
    ;
}

////////////////////
@name "motorway_link";
////////////////////

street {
    totalNumLanes: 1;
    laneWidth: 3.5;
    filletRadius: 10.;
}

section {
    class:
        if (item.totalLanes == 1) motorway_lanes_1 |
        if (item.totalLanes == 2) motorway_lanes_2
    ;
}


//@name "trunk";

//@name "trunk_link";


////////////////////
@name "primary";
////////////////////

street {
    totalNumLanesOneway: 2;
    totalNumLanes: 4;
    laneWidth: 2.7;
    filletRadius: 4.;
    sidewalk: both;
}

section(item.oneway) {
    class:
        if (item.totalLanes == 4) lanes_4 |
        if (item.totalLanes == 3) lanes_3 |
        if (item.totalLanes == 2) lanes_2 |
        if (item.totalLanes == 1) lanes_1
    ;
}

section {
    class:
        if (item.totalLanes == 4) lanes_2_2 |
        if (item.totalLanes == 3) lanes_2_1 |
        if (item.totalLanes == 2) lanes_1_1 |
        if (item.totalLanes == 1) lanes_1
    ;
}

sidewalk {
    class: sidewalk;
    width: 3.;
}

////////////////////
@name "primary_link";
////////////////////

street {
    totalNumLanes: 1;
    laneWidth: 2.7;
    filletRadius: 4.;
}

section {
    class:
        if (item.totalLanes == 1) lanes_1 |
        if (item.totalLanes == 2) lanes_2
    ;
}

////////////////////
@name "secondary";
////////////////////

street {
    totalNumLanes: 2;
    laneWidth: 2.5;
    filletRadius: 3.;
    sidewalk: both;
}

section(item.oneway) {
    class:
        if (item.totalLanes == 4) lanes_4 |
        if (item.totalLanes == 3) lanes_3 |
        if (item.totalLanes == 2) lanes_2 |
        if (item.totalLanes == 1) lanes_1
    ;
}

section {
    class:
        if (item.totalLanes == 4) lanes_2_2 |
        if (item.totalLanes == 3) lanes_2_1 |
        if (item.totalLanes == 2) lanes_1_1 |
        if (item.totalLanes == 1) lanes_1
    ;
}

sidewalk {
    class: sidewalk;
    width: 3.;
}

////////////////////
@name "secondary_link";
////////////////////

street {
    totalNumLanes: 1;
    laneWidth: 2.5;
    filletRadius: 3.;
}

section {
    class:
        if (item.totalLanes == 1) lanes_1 |
        if (item.totalLanes == 2) lanes_2
    ;
}

//@name "tertiary";

//@name "tertiary_link";

////////////////////
@name "residential";
////////////////////

street {
    totalNumLanes: 2;
    laneWidth: 2.5;
    filletRadius: 2.;
    sidewalk: both;
}

section(item.oneway) {
    class:
        if (item.totalLanes == 4) lanes_4 |
        if (item.totalLanes == 3) lanes_3 |
        if (item.totalLanes == 2) lanes_2 |
        if (item.totalLanes == 1) lanes_1
    ;
}

section {
    class:
        if (item.totalLanes == 4) lanes_2_2 |
        if (item.totalLanes == 3) lanes_2_1 |
        if (item.totalLanes == 2) lanes_1_1 |
        if (item.totalLanes == 1) lanes_1
    ;
}

sidewalk {
    class: sidewalk;
    width: 2.;
}


//@name "living_street";

////////////////////
@name "service";
////////////////////

street {
    totalNumLanes: random_weighted( (1, 60), (2, 40) );
    laneWidth: 2.;
    filletRadius: 1.;
    sidewalk: random_weighted( (none, 25), (both, 25), (left, 25), (left, 25) );
}

section(item.oneway) {
    class:
        if (item.totalLanes == 4) lanes_4 |
        if (item.totalLanes == 3) lanes_3 |
        if (item.totalLanes == 2) lanes_2 |
        if (item.totalLanes == 1) lanes_1
    ;
}

section {
    class:
        if (item.totalLanes == 4) lanes_2_2 |
        if (item.totalLanes == 3) lanes_2_1 |
        if (item.totalLanes == 2) lanes_1_1 |
        if (item.totalLanes == 1) lanes_1
    ;
}

sidewalk {
    class: sidewalk;
    width: 2.;
}

//@name "pedestrian";