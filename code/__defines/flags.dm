//MARK ALL FLAG CHANGES IN _globals/bitfields.dm!
//All flags should go in here if possible.
#define ALL (~0) //For convenience.
#define NONE 0

//for convenience
#define ENABLE_BITFIELD(variable, flag)				(variable |= (flag))
#define DISABLE_BITFIELD(variable, flag)			(variable &= ~(flag))
#define CHECK_BITFIELD(variable, flag)				(variable & (flag))

//check if all bitflags specified are present
#define CHECK_MULTIPLE_BITFIELDS(flagvar, flags)	((flagvar & (flags)) == flags)

GLOBAL_LIST_INIT(bitflags, list(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304))

/* Directions */
///All the cardinal direction bitflags.
#define ALL_CARDINALS (NORTH|SOUTH|EAST|WEST)

// datum_flags
#define DF_VAR_EDITED			(1<<0)
#define DF_ISPROCESSING			(1<<1)
#define DF_USE_TAG				(1<<2)

// /atom/movable movement_type
#define UNSTOPPABLE				(1<<0)			//Can not be stopped from moving from Cross(), CanPass(), or Uncross() failing. Still bumps everything it passes through, though.

// Flags bitmasks. - Used in /atom/var/flags
#define NOBLUDGEON				(1<<0)	// When an item has this it produces no "X has been hit by Y with Z" message with the default handler.
#define NOCONDUCT					(1<<1)	// Conducts electricity. (metal etc.)
#define ON_BORDER				(1<<2)	// Item has priority to check when entering or leaving.
#define NOBLOODY				(1<<3)	// Used for items if they don't want to get a blood overlay.
#define OPENCONTAINER			(1<<4)	// Is an open container for chemistry purposes.
#define PHORONGUARD				(1<<5)	// Does not get contaminated by phoron.
#define	NOREACT					(1<<6)	// Reagents don't react inside this container.
#define OVERLAY_QUEUED			(1<<7)// Atom queued to SSoverlay for COMPILE_OVERLAYS
#define IS_BUSY					(1<<8)	// Atom has a TASK_TARGET_EXCLUSIVE do_after with it as the target.
#define ATOM_INITIALIZED		(1<<23) // Atom has been initialized. Using a flag instead of a variable saves ~25mb total.

//Flags for items (equipment) - Used in /obj/item/var/item_flags
#define THICKMATERIAL			(1<<0)	// Prevents syringes, parapens and hyposprays if equipped to slot_suit or slot_head.
#define AIRTIGHT				(1<<1)	// Functions with internals.
#define NOSLIP					(1<<2)	// Prevents from slipping on wet floors, in space, etc.
#define BLOCK_GAS_SMOKE_EFFECT	(1<<3)	// Blocks the effect that chemical clouds would have on a mob -- glasses, mask and helmets ONLY! (NOTE: flag shared with ONESIZEFITSALL)
#define FLEXIBLEMATERIAL		(1<<4)	// At the moment, masks with this flag will not prevent eating even if they are covering your face.
#define ALLOW_SURVIVALFOOD		(1<<5)	// Allows special survival food items to be eaten through it
#define INFINITE_AIR			(1<<6)	// Provides an infinite air supply.

// Flags for pass_flags. - Used in /atom/var/pass_flags
#define PASSTABLE				(1<<0)
#define PASSGLASS				(1<<1)
#define PASSGRILLE				(1<<2)
#define PASSBLOB				(1<<3)
#define PASSMOB					(1<<4)

// Flags for do_after/do_mob exclusivity.
#define TASK_TARGET_EXCLUSIVE	(1<<1)
#define TASK_USER_EXCLUSIVE		(1<<2)
#define TASK_ALL_EXCLUSIVE		TASK_TARGET_EXCLUSIVE | TASK_USER_EXCLUSIVE

// Update flags for [/atom/proc/update_appearance]
/// Update the atom's name
#define UPDATE_NAME (1<<0)
/// Update the atom's desc
#define UPDATE_DESC (1<<1)
/// Update the atom's icon state
#define UPDATE_ICON_STATE (1<<2)
/// Update the atom's overlays
#define UPDATE_OVERLAYS (1<<3)
/// Update the atom's greyscaling
#define UPDATE_GREYSCALE (1<<4)
/// Update the atom's smoothing. (More accurately, queue it for an update)
#define UPDATE_SMOOTHING (1<<5)
/// Update the atom's icon
#define UPDATE_ICON (UPDATE_ICON_STATE|UPDATE_OVERLAYS)
