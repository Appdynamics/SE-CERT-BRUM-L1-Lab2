- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Enable Auto-injection for BTs](#enable-auto-injection-for-bts)
- [Home Page](#home-page)
- [Activity Page](#activity-page)
- [Pay Bills Page](#pay-bills-page)
- [Stocks Page](#stocks-page)
- [Statements Page](#statements-page)
- [Order New Card Page](#order-new-card-page)

# 1) Introduction

This lab will guide you through several BRUM use cases and troubleshooting scenarios.

Follow this lab manual with the accompanying application. Copy this lab manual text into a Doc for recording your responses to the lab questions. Screen shots are perfectly fine to answer some questions. Other questions might require a written response, but don't write an essay. Short and to the point is fine so long as it's clear that you understand the concept.

If you get stuck, make sure that you have a good config in the Controller and successful Beacons being sent. DevTools will be your best friend along the way so make sure that you are comfortable with the capabilities.

# 2) Getting Started

This lab consists of an online banking app. Each page has a specific, issue with the performance or how the page interacts with BRUM.

1. Start the lab with your chosed method in the [README](README.md)
1. Enable an auto-refresh extension in your browser to refresh the current page every 30 seconds. Keep your auto-refresh extension going on every page to drive traffic. You can turn it off if you'd like to inspect the page, but remember to turn it back on again.(The auto-refresh extension is an excellent way to drive traffic in real-world applications. Even if you have a load test script, this approach is nice because you control the traffic.)
2. Open the Lab 2 app at **http://YOUR_VM_URL:8080**

# 3) Enable Auto-injection for BTs

1. Follow the docs to enable auto-injection on every _possible_ BT. Connect this APM application to the EUM app that you created in Lab 1.
   1. Why is this application be a candidate for auto-injection?
2. Navigate through each page several times to drive load. View the source of the pages and verify that the JS agent has been injected.
3. Which BTs are eligible for auto-injection?
4. Why are the /api/ BTs not in the list of auto-injection candidates?
   1. How can you verify this in DevTools?
5. Insert a screenshot of the BT and Pages &amp; Ajax pages from the Controller.

# 4) Home Page

1. The /api/... ajax calls need to be refined because they're not specific enough. Create a set of custom naming rules to bring these ajax calls under control. In the end, you should have **19 distinct ajax calls** for the /api/... path.
2. Use the UI to exclude the ajax calls to the Typicode domain.
   1. How did you accomplish this?
   2. What other options do you have for excluding calls?
3. Use DevTools to inspect the Beacon's event types. What kind of events you see? How did you verify this?

# 5) Activity Page

1. What kind(s) of performance problems does this page exhibit?
2. How can you verify this with BRUM? Is there any other AppDynamics data that may help?
3. Describe how this impacts the Critical Rendering Path?
4. What do you see in DevTools?

# 6) Pay Bills Page

1. What kind(s) of performance problems does this page exhibit?
2. How can you verify this with BRUM? Is there any other AppDynamics data that may help?
3. Describe how this impacts the Critical Rendering Path?
4. What do you see in DevTools?

# 7) Stocks Page

1. What's unique about how this page is constructed? Use DevTools to verify this.
2. Click on the links for the different stock symbols. What does BRUM report about your navigation activities?
3. How are these unique page elements designated in BRUM?
4. Describe how the JS agent is getting into these page elements.
5. What would happen to BRUM metrics if this page embedded another domain like nasdaq.com?
6. The page element on the right side seems to be presenting specific stock information. What BT does this element correspond to?
7. Is this BT a candidate for auto-injection?
   1. Why or why not?
   2. How can you verify this in DevTools?

# 8) Statements Page

1. Click onto each of the tabs several times. What data do you see in BRUM?
2. Inspect the source code. Explain how this new data is getting to BRUM.
3. Use DevTools to inspect the Beacon's event types. What kind of events you see? How did you verify this?

# 9) Order New Card Page

1. This page is based on Angular JS 1.x. What support does BRUM have for this SPA framework?
   1. Explain how BRUM is monitoring this page without having to make any manual changes.
2. Navigate several times through each step of the Order New Card process.
   1. Stop navigating back on the "Select Your Missing Card" page to allow your auto-refresh to generate load for that page.
3. How are the metrics in BRUM for the Order New Card workflow different than for the other pages in this app?
4. What kinds of new data has appeared in BRUM?
5. What kind(s) of performance problems does the "Select Your Missing Card" page page exhibit?
6. Examine a snapshot for "Select Your Missing Card". What factors contribute to the End User Response time (EURT)?
7. Describe how BRUM calculates the EURT for this page.
