init {
    int n = 10;
    int result = 1;
    do
    :: n > 1 ->
        result = result * n;
        n--;
    :: n <= 1 -> break
    od;
    printf("Result: %d\n", result);
}