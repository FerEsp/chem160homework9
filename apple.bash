#!/bin/bash
cd stock_data
grep aapl *$1* | colrm 1 23 | colrm 8 70
