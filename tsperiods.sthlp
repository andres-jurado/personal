{smcl}
{* August 30, 2019}{...}
{hline}
help for {hi:tsperiods}
{hline}

{title:tsperiods} - A module that divides a panel dataset into equisized groups, with zero denoting the date of an event.  

{p 8 16 2}{cmd:tsperiods}
{cmd:,} 
{cmdab:bys:(}{it:varlist}{cmd:)} {cmdab:datevar:(}{it:varlist}{cmd:)} {cmdab:maxperiods:(}{it:integer}{cmd:)} {cmdab:periods:(}{it:integer}{cmd:)} 
[{cmdab:event:(}{it:varlist}{cmd:)} {cmdab:eventdate:(}{it:varlist}{cmd:)} {cmdab:name:(}{it:string}{cmd:)} {cmd:symmetric}]

{it:tsperiods} returns a new variabled called {it:epoch}, unless {it:name} is specified

{p 4 4 2}
where

{p 8 16 2}
{it:bys} list of variables that constitute an ID.

{p 8 16 2}
{it:datevar} is a date variable

{p 8 16 2}
{it:maxperiods} the maximum number of epochs to be considered

{p 8 16 2}
{it:periods} length on an epoch. If option {it:symmetric} is selected, {it:periods} must be even.
  
{p 8 16 2}
{it:event} is a binary variable that captures the timing of an event. Can only be 0, 1 or missing. Can only have 1 date of event per ID.

{p 8 16 2}
{it:eventdate} a variable with the date of the event. Can only specify either {it:event} or {it:eventdate}. Can only have 1 {it:eventdate} per ID.

{p 8 16 2}
{it:symmetric} by default {cmd:tsperiods} constructs epoch as follows (consider the case of t-0): [0,periods). If symmetric is specified then t-0 is constructed as [-periods/2, periods/2].

This is open source software distributed under the GPL-3 license. Ownership belongs to their respective authors.
For more documentation, examples and the most up to date code visit {browse "https://github.com/economic-research/open-ado/"}
This version is as at least as recent as commit: 1f247da055c6deb60b7fe35e8077ef3e8003b710

{title:Authors}

{p 4} Andres Jurado {p_end}
{p 4}jose_jurado_vadillo@brown.edu{p_end}