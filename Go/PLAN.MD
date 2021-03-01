# THE PLAN
## General flow of the finished project
- Run the selection network on the current position (removing the most recently played stone).
- If the game has already been played, add the most recently played stone to pool.
- Each point selected is run through the evaluation network and given a score.
- For the top x scores run this process again on the new position to create a suggested pattern of play.
- Profit!
- (potentially create a system that rebalances the scores when the evaluation process is re-run)
## Plan to train the thing
- Have the selection network + evaluation network (no depth) play against itself
- Backpropagate somehow on the game and initiate LEARNING :)
- Repeat
- Profit!
