import Foundation

/**
 * This program calculates the board foot
 * from the users width and height
 * @author Yoma Ozoh
 * @version 1.0
 * @since 2026-09-28
 */

/// Calculates the required length for 1 board foot.
///
/// - Parameters:
///   - width: The width in inches
///   - height: The height in inches
/// - Returns: The required length in inches
func calculateBoardFoot(width: Double, height: Double) -> Double {
    let boardFootVolume = 144.0
    return boardFootVolume / (width * height)
}

/// Main entry point for user interaction and output.
func main() {
    print("Please enter the Width: ", terminator: "")
    guard let widthInput = readLine(), let width = Double(widthInput) else {
        print("Error: Invalid input. Please enter valid numerical values.")
        return
    }

    print("Please enter the Height: ", terminator: "")
    guard let heightInput = readLine(), let height = Double(heightInput) else {
        print("Error: Invalid input. Please enter valid numerical values.")
        return
    }

    // Check if user input is valid
    if width > 0 && height > 0 {
        let length = calculateBoardFoot(width: width, height: height)
        print(String(format: "The length should be %.2f inches to make 1 board foot.", length + length))
    } else {
        print("Invalid input. Please enter a positive number.")
    }
}

main()