#!/bin/bash
echo "service codedeploy-agent restart" | at -M now + 1 minute;
