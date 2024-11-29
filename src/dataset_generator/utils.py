# Copied from https://github.com/facebookresearch/CompilerGym/blob/development/compiler_gym/envs/llvm/specs.py

from enum import Enum


class actions(Enum):
    AddDiscriminators = "add-discriminators"
    Adce = "adce"
    AggressiveInstcombine = "aggressive-instcombine"
    AlignmentFromAssumptions = "alignment-from-assumptions"
    AlwaysInline = "always-inline"
    Argpromotion = "argpromotion"
    Attributor = "attributor"
    Barrier = "barrier"
    Bdce = "bdce"
    BreakCritEdges = "break-crit-edges"
    Simplifycfg = "simplifycfg"
    CallsiteSplitting = "callsite-splitting"
    CalledValuePropagation = "called-value-propagation"
    CanonicalizeAliases = "canonicalize-aliases"
    Consthoist = "consthoist"
    Constmerge = "constmerge"
    Constprop = "constprop"
    CoroCleanup = "coro-cleanup"
    CoroEarly = "coro-early"
    CoroElide = "coro-elide"
    CoroSplit = "coro-split"
    CorrelatedPropagation = "correlated-propagation"
    CrossDsoCfi = "cross-dso-cfi"
    Deadargelim = "deadargelim"
    Dce = "dce"
    Die = "die"
    Dse = "dse"
    Reg2mem = "reg2mem"
    DivRemPairs = "div-rem-pairs"
    EarlyCseMemssa = "early-cse-memssa"
    EarlyCse = "early-cse"
    ElimAvailExtern = "elim-avail-extern"
    EeInstrument = "ee-instrument"
    Flattencfg = "flattencfg"
    Float2int = "float2int"
    Forceattrs = "forceattrs"
    Inline = "inline"
    InsertGcovProfiling = "insert-gcov-profiling"
    GvnHoist = "gvn-hoist"
    Gvn = "gvn"
    Globaldce = "globaldce"
    Globalopt = "globalopt"
    Globalsplit = "globalsplit"
    GuardWidening = "guard-widening"
    Hotcoldsplit = "hotcoldsplit"
    Ipconstprop = "ipconstprop"
    Ipsccp = "ipsccp"
    Indvars = "indvars"
    Irce = "irce"
    InferAddressSpaces = "infer-address-spaces"
    Inferattrs = "inferattrs"
    InjectTliMappings = "inject-tli-mappings"
    Instsimplify = "instsimplify"
    Instcombine = "instcombine"
    Instnamer = "instnamer"
    JumpThreading = "jump-threading"
    Lcssa = "lcssa"
    Licm = "licm"
    LibcallsShrinkwrap = "libcalls-shrinkwrap"
    LoadStoreVectorizer = "load-store-vectorizer"
    LoopDataPrefetch = "loop-data-prefetch"
    LoopDeletion = "loop-deletion"
    LoopDistribute = "loop-distribute"
    LoopFusion = "loop-fusion"
    LoopGuardWidening = "loop-guard-widening"
    LoopIdiom = "loop-idiom"
    LoopInstsimplify = "loop-instsimplify"
    LoopInterchange = "loop-interchange"
    LoopLoadElim = "loop-load-elim"
    LoopPredication = "loop-predication"
    LoopReroll = "loop-reroll"
    LoopRotate = "loop-rotate"
    LoopSimplifycfg = "loop-simplifycfg"
    LoopSimplify = "loop-simplify"
    LoopSink = "loop-sink"
    LoopReduce = "loop-reduce"
    LoopUnrollAndJam = "loop-unroll-and-jam"
    LoopUnroll = "loop-unroll"
    LoopUnswitch = "loop-unswitch"
    LoopVectorize = "loop-vectorize"
    LoopVersioningLicm = "loop-versioning-licm"
    LoopVersioning = "loop-versioning"
    Loweratomic = "loweratomic"
    LowerConstantIntrinsics = "lower-constant-intrinsics"
    LowerExpect = "lower-expect"
    LowerGuardIntrinsic = "lower-guard-intrinsic"
    Lowerinvoke = "lowerinvoke"
    LowerMatrixIntrinsics = "lower-matrix-intrinsics"
    Lowerswitch = "lowerswitch"
    LowerWidenableCondition = "lower-widenable-condition"
    Memcpyopt = "memcpyopt"
    Mergefunc = "mergefunc"
    Mergeicmps = "mergeicmps"
    MldstMotion = "mldst-motion"
    Sancov = "sancov"
    NameAnonGlobals = "name-anon-globals"
    NaryReassociate = "nary-reassociate"
    Newgvn = "newgvn"
    PgoMemopOpt = "pgo-memop-opt"
    PartialInliner = "partial-inliner"
    PartiallyInlineLibcalls = "partially-inline-libcalls"
    PostInlineEeInstrument = "post-inline-ee-instrument"
    Functionattrs = "functionattrs"
    Mem2reg = "mem2reg"
    PruneEh = "prune-eh"
    Reassociate = "reassociate"
    RedundantDbgInstElim = "redundant-dbg-inst-elim"
    RpoFunctionattrs = "rpo-functionattrs"
    RewriteStatepointsForGc = "rewrite-statepoints-for-gc"
    Sccp = "sccp"
    SlpVectorizer = "slp-vectorizer"
    Sroa = "sroa"
    Scalarizer = "scalarizer"
    SeparateConstOffsetFromGep = "separate-const-offset-from-gep"
    SimpleLoopUnswitch = "simple-loop-unswitch"
    Sink = "sink"
    SpeculativeExecution = "speculative-execution"
    Slsr = "slsr"
    StripDeadPrototypes = "strip-dead-prototypes"
    StripDebugDeclare = "strip-debug-declare"
    StripNondebug = "strip-nondebug"
    Strip = "strip"
    Tailcallelim = "tailcallelim"
    Mergereturn = "mergereturn"


class action_descriptions(Enum):
    AddDiscriminators = "Add DWARF path discriminators"
    Adce = "Aggressive Dead Code Elimination"
    AggressiveInstcombine = "Combine pattern based expressions"
    AlignmentFromAssumptions = "Alignment from assumptions"
    AlwaysInline = "Inliner for always_inline functions"
    Argpromotion = "Promote 'by reference' arguments to scalars"
    Attributor = "Deduce and propagate attributes"
    Barrier = "A No-Op Barrier Pass"
    Bdce = "Bit-Tracking Dead Code Elimination"
    BreakCritEdges = "Break critical edges in CFG"
    Simplifycfg = "Simplify the CFG"
    CallsiteSplitting = "Call-site splitting"
    CalledValuePropagation = "Called Value Propagation"
    CanonicalizeAliases = "Canonicalize aliases"
    Consthoist = "Constant Hoisting"
    Constmerge = "Merge Duplicate Global Constants"
    Constprop = "Simple constant propagation"
    CoroCleanup = "Lower all coroutine related intrinsics"
    CoroEarly = "Lower early coroutine intrinsics"
    CoroElide = "Coroutine frame allocation elision and indirect calls replacement"
    CoroSplit = "Split coroutine into a set of functions driving its state machine"
    CorrelatedPropagation = "Value Propagation"
    CrossDsoCfi = "Cross-DSO CFI"
    Deadargelim = "Dead Argument Elimination"
    Dce = "Dead Code Elimination"
    Die = "Dead Instruction Elimination"
    Dse = "Dead Store Elimination"
    Reg2mem = "Demote all values to stack slots"
    DivRemPairs = "Hoist/decompose integer division and remainder"
    EarlyCseMemssa = "Early CSE w/ MemorySSA"
    EarlyCse = "Early CSE"
    ElimAvailExtern = "Eliminate Available Externally Globals"
    EeInstrument = (
        "Instrument function entry/exit with calls to e.g. mcount()(pre inlining)"
    )
    Flattencfg = "Flatten the CFG"
    Float2int = "Float to int"
    Forceattrs = "Force set function attributes"
    Inline = "Function Integration/Inlining"
    InsertGcovProfiling = "Insert instrumentation for GCOV profiling"
    GvnHoist = "Early GVN Hoisting of Expressions"
    Gvn = "Global Value Numbering"
    Globaldce = "Dead Global Elimination"
    Globalopt = "Global Variable Optimizer"
    Globalsplit = "Global splitter"
    GuardWidening = "Widen guards"
    Hotcoldsplit = "Hot Cold Splitting"
    Ipconstprop = "Interprocedural constant propagation"
    Ipsccp = "Interprocedural Sparse Conditional Constant Propagation"
    Indvars = "Induction Variable Simplification"
    Irce = "Inductive range check elimination"
    InferAddressSpaces = "Infer address spaces"
    Inferattrs = "Infer set function attributes"
    InjectTliMappings = "Inject TLI Mappings"
    Instsimplify = "Remove redundant instructions"
    Instcombine = "Combine redundant instructions"
    Instnamer = "Assign names to anonymous instructions"
    JumpThreading = "Jump Threading"
    Lcssa = "Loop-Closed SSA Form Pass"
    Licm = "Loop Invariant Code Motion"
    LibcallsShrinkwrap = "Conditionally eliminate dead library calls"
    LoadStoreVectorizer = "Vectorize load and Store instructions"
    LoopDataPrefetch = "Loop Data Prefetch"
    LoopDeletion = "Delete dead loops"
    LoopDistribute = "Loop Distribution"
    LoopFusion = "Loop Fusion"
    LoopGuardWidening = "Widen guards (within a single loop, as a loop pass)"
    LoopIdiom = "Recognize loop idioms"
    LoopInstsimplify = "Simplify instructions in loops"
    LoopInterchange = "Interchanges loops for cache reuse"
    LoopLoadElim = "Loop Load Elimination"
    LoopPredication = "Loop predication"
    LoopReroll = "Reroll loops"
    LoopRotate = "Rotate Loops"
    LoopSimplifycfg = "Simplify loop CFG"
    LoopSimplify = "Canonicalize natural loops"
    LoopSink = "Loop Sink"
    LoopReduce = "Loop Strength Reduction"
    LoopUnrollAndJam = "Unroll and Jam loops"
    LoopUnroll = "Unroll loops"
    LoopUnswitch = "Unswitch loops"
    LoopVectorize = "Loop Vectorization"
    LoopVersioningLicm = "Loop Versioning For LICM"
    LoopVersioning = "Loop Versioning"
    Loweratomic = "Lower atomic intrinsics to non-atomic form"
    LowerConstantIntrinsics = "Lower constant intrinsics"
    LowerExpect = "Lower 'expect' Intrinsics"
    LowerGuardIntrinsic = "Lower the guard intrinsic to normal control flow"
    Lowerinvoke = "Lower invoke and unwind, for unwindless code generators"
    LowerMatrixIntrinsics = "Lower the matrix intrinsics"
    Lowerswitch = "Lower SwitchInst's to branches"
    LowerWidenableCondition = "Lower the widenable condition to default true value"
    Memcpyopt = "MemCpy Optimization"
    Mergefunc = "Merge Functions"
    Mergeicmps = "Merge contiguous icmps into a memcmp"
    MldstMotion = "MergedLoadStoreMotion"
    Sancov = "Pass for instrumenting coverage on functions"
    NameAnonGlobals = "Provide a name to nameless globals"
    NaryReassociate = "Nary reassociation"
    Newgvn = "Global Value Numbering"
    PgoMemopOpt = "Optimize memory intrinsic using its size value profile"
    PartialInliner = "Partial Inliner"
    PartiallyInlineLibcalls = "Partially inline calls to library functions"
    PostInlineEeInstrument = (
        "Instrument function entry/exit with calls to e.g. mcount()(post inlining)"
    )
    Functionattrs = "Deduce function attributes"
    Mem2reg = "Promote Memory to Register"
    PruneEh = "Remove unused exception handling info"
    Reassociate = "Reassociate expressions"
    RedundantDbgInstElim = "Redundant Dbg Instruction Elimination"
    RpoFunctionattrs = "Deduce function attributes in RPO"
    RewriteStatepointsForGc = "Make relocations explicit at statepoints"
    Sccp = "Sparse Conditional Constant Propagation"
    SlpVectorizer = "SLP Vectorizer"
    Sroa = "Scalar Replacement Of Aggregates"
    Scalarizer = "Scalarize vector operations"
    SeparateConstOffsetFromGep = (
        "Split GEPs to a variadic base and a constant offset for better CSE"
    )
    SimpleLoopUnswitch = "Simple unswitch loops"
    Sink = "Code sinking"
    SpeculativeExecution = "Speculatively execute instructions"
    Slsr = "Straight line strength reduction"
    StripDeadPrototypes = "Strip Unused Function Prototypes"
    StripDebugDeclare = "Strip all llvm.dbg.declare intrinsics"
    StripNondebug = "Strip all symbols, except dbg symbols, from a module"
    Strip = "Strip all symbols from a module"
    Tailcallelim = "Tail Call Elimination"
    Mergereturn = "Unify function exit nodes"