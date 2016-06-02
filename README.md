# Godchild Contract
Godchild is an ethereum contract for sponsoring a godchild. 
The child is given a paper wallet as a gift. What I like about this contract
is that it is really long-term. Payout is only possible after 18 years. It 
shows optimism and trust in ethereum to create such a contract.

_This is work in progress - do not use it, yet!_

## Rationale
Many times when a child is baptized the godparent will give a present to the baby. 
Since babies usually don't care much for presents, the gift often is money or a savings account. 
When the kid grows up it can then benefit (e.g. when turning 18).

## Considerations
- All is public - is that desirable for a contract like that?
- What happens if the child looses access to her/his account before payout day? 
- Anyone can send funds to the contract at anytime
 - There should be an option for the godparent to get back the money 5 or 10 years after the payout date.
- Should there be an option for emergency payout even before the set payout date?
- The legacy message left by the godparent could be encrypted using the public key of the child account (see https://bitcointalk.org/index.php?topic=627927.0 ). So they are not visible for anyone else looking at the contract on the blockchain. Of course - if the beneficiary wanted to she/he could look at the message anytime. Any ideas for making this trustless?

