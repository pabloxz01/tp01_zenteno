void setup() {
    size(600, 600);
    int numLines = 5;
    float lineSpacing = height / numLines;

    for (int i = 0; i < numLines; i++) {
        float y = (i + 1) * lineSpacing;
        stroke(0, 0, 255);
        line(0, y, width, y);

        if (i % 2 == 0) {
            int numCircles = 10;
            float circleSpacing = width / numCircles;

            for (int j = 0; j < numCircles; j++) {
                float x = (j + 0.5f) * circleSpacing;
                float circleY = y - 25;

                fill(random(255), random(255), random(255));
                ellipse(x, circleY, 50, 50);
            }
        }
    }
}
