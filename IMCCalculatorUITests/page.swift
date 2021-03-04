class page: IMCCalculatorUITests {

    private lazy var plusButton = buttons["+"]

    var numberOnScreen: Double? {
    return Double(screen.label)
}
