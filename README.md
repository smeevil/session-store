# Session Store

### What does it do ?

This plugin will allow you to persist session variables during browser reloads and revisits using amplify.

### Why?

I was expecting the meteor default Session.set('myVar', 'myVal') to act like a regular session. I was quite surprised to see that, when reloading the page, my session vars where gone. This package will expose a new api called SessionStore which inherits from Session. This means that all your session variables will still be reactive.

### Usage

**Installation:**

~~~js
meteor add smeevil:session-store
~~~

**Basic usage:**

You basically use this the same as you would with Session.


To store something :
~~~js
SessionStore.set('myVar', 'myVal');
~~~

To retrieve something :
~~~js
SessionStore.get('myVar');
# "myVal"
~~~

As an added bonus you can now inspect the store by :
~~~js
SessionStore.inspect();
# {"myVar": "myVal"}
~~~

You can clear a single var using the unset method, which will return the value it contained :
~~~js
SessionStore.unset('myVar');
# "myVar"
~~~

and to clear the complete store :
~~~js
SessionStore.clear();
# null
~~~


Attribution: 

Initial idea for this code came from sebastien.b at Stack Overflow : http://stackoverflow.com/questions/11705825/persistent-sessions-in-meteor#answer-14659117

Licensed under the WTFPL License. See the `LICENSE` file for details.
