# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab, we made a ripple counter and a modulo divider.

The ripple counter takes a clock input and feeds it into a chain of T-FlipFlops. TFF's toggle their input when enabled. For a ripple counter, we set the toggle signal to always be 1, and the data input to the output of the previous TFF, or for the first, the clock signal. Each TFF results in the clock input getting divided by two, so a chain of N TFF's results in a clock input of 1/(2^N). In this lab, as we want to divide by 8, we need three TFFs, becasue 2^3 equals 8;

The modulo divider is 

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

