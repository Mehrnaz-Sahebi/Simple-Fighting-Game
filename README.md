# Simple Fighting Game

This project is a simple implementation of a fighting game using Verilog hardware description language. The game features two players who fight against each other in a 6-block arena. Each player has 3 health points at the beginning, and health points are lost as they take damage from the opponent’s attacks. The game ends when a player’s health reaches zero.

### Features:
- **Movement**: Players can move left or right within their territory (3 blocks each).
- **Actions**: Players can perform actions like:
  - **Move Left**: Move one block to the left.
  - **Move Right**: Move one block to the right.
  - **Wait**: Do nothing and remain in place.
  - **Jump**: Dodge an attack.
  - **Punch**: A close-range attack (deducts 2 health points).
  - **Kick**: A mid-range attack (deducts 1 health point).
  
- **Health Points**: Each player starts with 3 health points. After taking a successful attack, health points are reduced based on the type of attack.
- **Attack Rules**: Players can perform a **punch** or a **kick**, with different rules for when these can be performed, depending on their distance from the opponent.

### Rules:
1. **Movement**: Players are confined to their 3-block area and cannot cross into the opponent's territory.
2. **Health Deduction**: If an attack (punch or kick) hits the opponent, their health is reduced by 1 or 2 points, respectively.
3. **Attack Resolution**: 
   - Players can only perform a **kick** when they are within 1 block of each other, while **punch** requires both players to be in the same block.
   - **Punch** has priority over **kick** if both are executed simultaneously.

### Objective:
The goal of the game is to reduce the opponent’s health to zero first. The player who runs out of health first loses.

## Compilation

To compile and simulate the Verilog code, follow these steps:

### Prerequisites:
1. Install a Verilog simulator (e.g., **ModelSim**, **Vivado**, **XSIM**).
2. Ensure that your environment has access to the required Verilog tools.

### Steps:

1. **Compile the Verilog Files**:
   - First, compile the main game logic module (`fightingGame.v`):
     ```bash
     vlog fightingGame.v
     ```

   - Next, compile the testbench (`fightingGameTestBench.v`):
     ```bash
     vlog fightingGameTestBench.v
     ```

2. **Run the Simulation**:
   - Start the simulation by running the testbench:
     ```bash
     vsim work.fightingGameTestBench
     ```

3. **View the Simulation Output**:
   - After running the simulation, observe the output in the simulator's waveform viewer or console to ensure the game logic works as expected.
   - Check for player movements, health deductions, attack behavior, and collision resolution.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Authors  
- **Mehrnaz Sahebi** [GitHub Profile](https://github.com/Mehrnaz-Sahebi)
- **Manely Hamedani** [GitHub Profile](https://github.com/manelyhamedani)
