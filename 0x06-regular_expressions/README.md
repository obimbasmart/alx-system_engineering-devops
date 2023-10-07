# Regular expression
> Regex provides incribible power for pattern matching. Through this project and practice, I've learned how to craft regex patterns to efficiently search, extract, and manipulate data within text. This is an essential tool  like data parsing and validation

## Advanced task

- `100-textme.rb"` - For this task, you’ll be taking over Guillaume’s responsibilities: one afternoon, a TextMe VoIP Engineer comes to you and explains she wants to run some statistics on the TextMe app text messages transactions.

  - Requirements:

    - Your script should output: [SENDER],[RECEIVER],[FLAGS]
    - The sender's phone number or name (including country code if present)
    - The receiver's phone number or name (including country code if present)
    - The flags that were used

  - Input text:
    - `'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'`
 
  - Output
      - ` Google,+16474951758,-1:0:-1:0:-1`


