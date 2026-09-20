![Project banner](https://github.com/bluffcon/arbiterlib/blob/main/arbiter_banner.png?raw=true)

# ArbiterLib ⚙️

**Arbiter** is a Minecraft datapack framework library, your tool for quicker implementation of things you wish to make. It makes things easier for those who wish to use it!

## What it has to offer

- Crafting: a workbench and a smeltery, mimicking vanilla blocks.
> **JEI Integration for all Arbiter recipes via [our JEI addon](https://modrinth.com/mod/arbiterjei)**

- Commands for quick actions like applying y-motion, quick heads, instakills, etc.

- Block registry and centralized ticks. Placement logic and removal handled by Arbiter!

- Centralized player data storage, via ID in scoreboard and data storage, for storing and retrieving anything persistent

These are not *new* features, there are already libraries that make blocks or add crafting stations. But Arbiter does it all in one place, and Arbiter wants to do them better than anything else.

Feature requests and issues are more than welcome! Any size or complexity.

## Using Arbiter:

It is preferred Arbiter projects implement some or most of the Arbiter conventions. They're made to create a coherent experience that works in every shape and form. **To see all conventions, visit the [`conventions.md` file](https://github.com/bluffcon/arbiterlib/blob/main/conventions.md)**

> Check out the [Template Project](https://github.com/bluffcon/example-arbiterlib) for Arbiter to get started! All requirements in implementation are already there. It's always kept up-to-date with the features of this repo.


### Nice things

These are small, but can improve quality of life if used correctly.

- The Arbiter tick system:
> `#arbiterlib:t/quick` for tick intervals (1t), `#arbiterlib:t/regular` for regular jobs (4t), `#arbiterlib:t/redundant` for things that should happen once in sometimes (160t, modifiable by server admin). Feel free to expand by adding your own ticks to `#arbiterlib:load`

- Arbiter's `arbiterlib:player` score id system, from which you can access player data by using a macro on `arbiterlib:player_data` storage

- Arbiter's tags, one can be excluding `#arbiterlib:inanimate` to search for living entities, or checking if this block is `#arbiterlib:

- For the rest of features and information, **please visit the [`info.md` file](https://github.com/bluffcon/arbiterlib/blob/main/info.md)**


# Afterword

[Join the Discord](https://discord.gg/wczBNd8qVE) to chat about your projects you may develop with this, about datapacks that use this framework, or anything else in the world!

Arbiter could make things easier for you, but could also make them take more time depending on how you work. You're free to use it or not use it! Open an issue if you have thoughts on how to improve Arbiter or if you found an error within this code.

Contributions, feature requests, code reviews, and issues are all welcome!
